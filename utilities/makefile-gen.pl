#!/usr/bin/perl

# Generates Makefile for each benchmark in polybench
# Expects to be executed from root folder of polybench
#
# Written by Tomofumi Yuki, 11/21 2014
#

my $GEN_CONFIG = 0;
my $TARGET_DIR = ".";

if ($#ARGV !=0 && $#ARGV != 1) {
   printf("usage perl makefile-gen.pl output-dir [-cfg]\n");
   printf("  -cfg option generates config.mk in the output-dir.\n");
   exit(1);
}



foreach my $arg (@ARGV) {
   if ($arg =~ /-cfg/) {
      $GEN_CONFIG = 1;
   } elsif (!($arg =~ /^-/)) {
      $TARGET_DIR = $arg;
   }
}


my %categories = (
   'linear-algebra/blas' => 3,
   'linear-algebra/kernels' => 3,
   'linear-algebra/solvers' => 3,
   'datamining' => 2,
   'stencils' => 2,
   'medley' => 2
);

my %extra_flags = (
   'cholesky' => '-lm',
   'gramschmidt' => '-lm',
   'correlation' => '-lm'
);

foreach $key (keys %categories) {
   my $target = $TARGET_DIR.'/'.$key;
   opendir DIR, $target or die "directory $target not found.\n";
   while (my $dir = readdir DIR) {
        next if ($dir=~'^\..*');
        next if (!(-d $target.'/'.$dir));

	my $kernel = $dir;
        my $file = $target.'/'.$dir.'/Makefile';
        my $polybenchRoot = '../'x$categories{$key};
        my $configFile = $polybenchRoot.'config.mk';
        my $utilityDir = $polybenchRoot.'utilities';

        open FILE, ">$file" or die "failed to open $file.";

print FILE << "EOF";
include $configFile

EXTRA_FLAGS=$extra_flags{$kernel}

$kernel: $kernel.c $kernel.h
	\${VERBOSE} \${CC} -o $kernel-san.wasm $kernel.c \${CFLAGS} -I. -I$utilityDir $utilityDir/polybench.c \${EXTRA_FLAGS} \${SAN_FLAGS}
	\${VERBOSE} \${CC} -o $kernel.wasm $kernel.c \${CFLAGS} -I. -I$utilityDir $utilityDir/polybench.c \${EXTRA_FLAGS}

clean:
	@ rm -f $kernel.wasm

EOF

        close FILE;
   }


   closedir DIR;
}

if ($GEN_CONFIG) {
open FILE, '>'.$TARGET_DIR.'/config.mk';

print FILE << "EOF";
CC=clang
WASM_FLAGS=--target=wasm64-unknown-wasi --sysroot \$(PWD)/../wasi-libc/sysroot -g -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks \$(PWD)/../llvm-project/wasm_memsafety_rtlib.c
SAN_FLAGS=-mmem-safety -fsanitize=wasm-memsafety
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO \${WASM_FLAGS}
EOF

close FILE;

}

