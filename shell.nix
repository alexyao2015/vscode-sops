with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "node";
    buildInputs = [
        nodejs
        typescript
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}