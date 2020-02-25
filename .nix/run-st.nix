{ mkDerivation, base, fetchgit, primitive, primitive-unlifted
, stdenv
}:
mkDerivation {
  pname = "run-st";
  version = "0.1.2.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/run-st";
    sha256 = "1sy26ymbk96lhjzdsl53ggyskhwzf9gqgw3zy5zl19hympn0pdgj";
    rev = "74c8e13d59d936559b22798415c011a5a0d2570b";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [ base primitive primitive-unlifted ];
  homepage = "https://github.com/andrewthad/run-st";
  description = "runST without boxing penalty";
  license = stdenv.lib.licenses.bsd3;
}
