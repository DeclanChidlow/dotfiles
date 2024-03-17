{
# Optimise Disk
nix.settings.auto-optimise-store = true;

# Clear old generations automatically
nix.gc.automatic = true;
nix.gc.dates = "daily";
nix.gc.options = "--delete-older-than +5";
}
