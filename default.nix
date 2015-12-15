#{ clangStdenv }:

with import <nixpkgs> {};

clangStdenv.mkDerivation rec {
  name = "linenoise-1.0.2";

  src = ./.;

  buildInputs = [ cmake ];

  meta = {
    description = "Linenoise is a lightweight line-editing library.";
    homepage = https://github.com/antirez/linenoise;
    license = stdenv.lib.licenses.bsd3;
    platforms = stdenv.lib.platforms.all;
  };
}
