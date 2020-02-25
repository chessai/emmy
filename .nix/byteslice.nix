{ mkDerivation, base, bytestring, fetchgit, gauge, primitive
, primitive-addr, primitive-unlifted, quickcheck-classes, run-st
, stdenv, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "byteslice";
  version = "0.2.2.0";
  src = fetchgit {
    url = "https://github.com/andrewthad/byteslice";
    sha256 = "0xbrad9r7pklys4kn89bz6bx4sjqs4l47i903zvm49fr72lid91k";
    rev = "2e0799cb8ec231d30ab7a0685ebccd25bf400be1";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base primitive primitive-addr primitive-unlifted run-st
  ];
  testHaskellDepends = [
    base bytestring primitive quickcheck-classes tasty tasty-hunit
    tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base gauge primitive ];
  homepage = "https://github.com/andrewthad/byteslice";
  description = "Slicing managed and unmanaged memory";
  license = stdenv.lib.licenses.bsd3;
}
