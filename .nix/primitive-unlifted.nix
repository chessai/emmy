{ mkDerivation, base, bytestring, fetchgit, primitive, stdenv, stm
, text-short
}:
mkDerivation {
  pname = "primitive-unlifted";
  version = "0.1.3.0";
  src = fetchgit {
    url = "https://github.com/haskell-primitive/primitive-unlifted";
    sha256 = "0v397r6riqh02rw76camydawapd7aahhkwxny1wxpsjqfw6y0910";
    rev = "00d1a44246779a17e0651005df062264f20b4b6e";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [ base bytestring primitive text-short ];
  testHaskellDepends = [ base primitive stm ];
  homepage = "https://github.com/haskell-primitive/primitive-unlifted";
  description = "Primitive GHC types with unlifted types inside";
  license = stdenv.lib.licenses.bsd3;
}
