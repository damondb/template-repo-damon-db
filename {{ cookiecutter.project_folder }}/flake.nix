{
  description = "Hugo dev environment with Dart Sass, PostCSS, and NPM support";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        hugo = pkgs.hugo;             # Uses extended version by default
        dart-sass = pkgs.dart-sass;
        nodejs = pkgs.nodejs_20;
        npm = pkgs.nodePackages.npm;
      in {
        devShells.default = pkgs.mkShell {
          name = "hugo-dev-shell";

          buildInputs = [
            hugo
            dart-sass
            nodejs
            npm
          ];

          shellHook = ''
            export PATH="$PWD/node_modules/.bin:$PATH"

            echo "📦 Hugo development shell ready"
            echo "➡ Hugo: $(hugo version)"
            echo "➡ Sass: $(sass --version)"
            echo "➡ Node: $(node --version)"
            echo "➡ NPM: $(npm --version)"

            if [ -f package.json ] && [ ! -d node_modules ]; then
              echo "📦 Running npm install..."
              npm install
              echo "✅ Node modules installed"
            fi

            echo "➡ PostCSS: $(postcss --version 2>/dev/null || echo 'not installed')"
          '';
        };
      });
}
