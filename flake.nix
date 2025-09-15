{
  description = "WASI SDK 27 with wrapped clang for wasm32-wasi";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/25.05";

  outputs =
    { self, nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;

      mkPkgs = system: import nixpkgs { inherit system; };
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = mkPkgs system;
          lib = pkgs.lib;

          wasiSysroot = pkgs.stdenvNoCC.mkDerivation {
            pname = "wasi-sysroot";
            version = "27.0";
            src = pkgs.fetchurl {
              url = "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-27/wasi-sysroot-27.0.tar.gz";
              sha256 = "sha256-cRCsSPXQsfarZ9V67PUkUFQN3deQyv3EXw/ftCm9q4Q=";
            };
            installPhase = ''
              mkdir -p "$out"
              ls
              cp -R include lib share VERSION "$out"
            '';
          };

          sdkUrl =
            if system == "aarch64-linux" then
              "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-27/wasi-sdk-27.0-arm64-linux.tar.gz"
            else if system == "x86_64-linux" then
              "https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-27/wasi-sdk-27.0-x86_64-linux.tar.gz"
            else
              throw "Unsupported system ${system}";

          wasiSdk = pkgs.stdenvNoCC.mkDerivation {
            pname = "wasi-sdk";
            version = "27.0";
            src = pkgs.fetchurl {
              url = sdkUrl;
              sha256 = "sha256-TPTFU8RkDmPngEQhRvh9g/3/Vzf5iMBqbjsvAijjdmU=";
            };

            nativeBuildInputs = [ pkgs.autoPatchelfHook ];
            buildInputs = [ pkgs.stdenv.cc.cc.lib ];

            installPhase = ''
              mkdir -p "$out"
              cp -R bin lib share VERSION "$out"/
            '';
          };

          wasiSdkWrapped = pkgs.stdenvNoCC.mkDerivation {
            pname = "wasi-sdk-clang";
            version = "27.0";
            dontUnpack = true;

            nativeBuildInputs = [ pkgs.makeWrapper ];
            installPhase = ''
              mkdir -p "$out/bin"

              # Wrap clang and clang++
              for cc in clang clang++; do
                makeWrapper ${wasiSdk}/bin/$cc "$out/bin/$cc" \
                  --set WASI_SDK ${wasiSdk} \
                  --add-flags "--target=wasm32-wasi" \
                  --add-flags "--sysroot=${wasiSysroot}"
              done

              # Link existing LLVM binutils
              for t in llvm-ar llvm-ranlib llvm-nm llvm-objdump llvm-objcopy llvm-strip; do
                if [ -e ${wasiSdk}/bin/$t ]; then
                  ln -s ${wasiSdk}/bin/$t "$out/bin/$t"
                fi
              done

              # Link wasm-ld if present
              if [ -e ${wasiSdk}/bin/wasm-ld ]; then
                ln -s ${wasiSdk}/bin/wasm-ld "$out/bin/wasm-ld"
              fi
            '';
            passthru = { inherit wasiSysroot wasiSdk; };
          };

        in
        {
          default = wasiSdkWrapped;
          wasi-sdk = wasiSdk; # optional, for inspection
          wasi-sysroot = wasiSysroot; # optional, for inspection
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = mkPkgs system;
          tool = self.packages.${system}.default;
          sysroot = self.packages.${system}.wasi-sysroot;
        in
        {
          default = pkgs.mkShell {
            packages = [ tool ];
            env = {
              WASI_SYSROOT = "${sysroot}";
            };
          };
        }
      );
    };
}
