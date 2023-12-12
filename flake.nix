{
  description = "Dev environment for mtlynch slide-decks";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";

    # 0.119.0 release
    hugo_dep.url = "github:NixOS/nixpkgs/75a52265bda7fd25e06e3a67dee3f0354e73243c";
  };

  outputs = { self, nixpkgs, flake-utils, hugo_dep }@inputs :
    flake-utils.lib.eachDefaultSystem (system:
    let
      hugo_dep = inputs.hugo_dep.legacyPackages.${system};
    in
    {
      devShells.default = hugo_dep.mkShell {
        packages = [
          hugo_dep.hugo
        ];

        shellHook = ''
          hugo version
        '';
      };
    });
}
