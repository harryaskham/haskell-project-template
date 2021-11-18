{ mkDerivation, base, lib, relude }:
mkDerivation {
  pname = "projectname";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base relude ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
