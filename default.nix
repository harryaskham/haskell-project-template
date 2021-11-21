{ mkDerivation, base, HUnit, lib, QuickCheck, relude }:
mkDerivation {
  pname = "projectname";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base relude ];
  executableHaskellDepends = [ base relude ];
  testHaskellDepends = [ base HUnit QuickCheck relude ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
