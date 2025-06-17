nix flake update
home-manager switch --flake .#bstock -b backup
nix-collect-garbage 
gh auth login