{ mkDerivation, attoparsec, base, bytestring, criterion, exceptions
, hspec, iproute, lens, protolude, QuickCheck, quickcheck-instances
, stdenv, time, uri-bytestring
}:
mkDerivation {
  pname = "log-parser";
  version = "0.1.1.0";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base bytestring iproute protolude time uri-bytestring
  ];
  testHaskellDepends = [
    base bytestring exceptions hspec iproute lens protolude QuickCheck
    quickcheck-instances time uri-bytestring
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion protolude
  ];
  homepage = "https://github.com/pbogdan/log-parser#readme";
  description = "Parser for various access log files";
  license = stdenv.lib.licenses.bsd3;
}
