{ pkgs, ... }:

{
# Auto mount drives
services.gvfs.enable = true;
services.udisks2.enable = true;

services.mullvad-vpn.enable = true;
services.mullvad-vpn.package = pkgs.mullvad-vpn;
}
