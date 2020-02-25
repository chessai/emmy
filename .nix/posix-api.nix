{ mkDerivation, base, byteslice, fetchgit, primitive
, primitive-addr, primitive-offset, primitive-unlifted, stdenv
, tasty, tasty-hunit
}:
mkDerivation {
  pname = "posix-api";
  version = "0.3.3.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/posix-api";
    sha256 = "096ynzf1x1r6y7q4dhxjxq9fqwp0fbiyid2psk1x02242ky9dslk";
    rev = "179f3e5063b60b9e15e199ed009eaeda78b3d477";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base byteslice primitive primitive-addr primitive-offset
    primitive-unlifted
  ];
  testHaskellDepends = [
    base primitive primitive-unlifted tasty tasty-hunit
  ];
  homepage = "https://github.com/andrewthad/posix-api";
  description = "posix bindings";
  license = stdenv.lib.licenses.bsd3;
}
