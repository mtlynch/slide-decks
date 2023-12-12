{
  description = "Dev environment for mtlynch slide-decks";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";

    # 0.119.0 release
    hugo_dep.url = "github:NixOS/nixpkgs/75a52265bda7fd25e06e3a67dee3f0354e73243c";

    # 1.21.4 release
    go_dep.url = "github:NixOS/nixpkgs/a71323f68d4377d12c04a5410e214495ec598d4c";
  };

  outputs = { self, nixpkgs, flake-utils, go_dep, hugo_dep }@inputs :
    flake-utils.lib.eachDefaultSystem (system:
    let
      hugo_dep = inputs.hugo_dep.legacyPackages.${system};
      go_dep = inputs.go_dep.legacyPackages.${system};
    in
    {
      devShells.default = hugo_dep.mkShell {
        packages = [
          hugo_dep.hugo
          go_dep.go
        ];

        shellHook = ''
          go version
          hugo version
        '';
      };
    });
}
