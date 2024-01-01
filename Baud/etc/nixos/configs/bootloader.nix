{
  # Setup bootloader
  boot.loader = {
    systemd-boot = {
      enable = true;
      editor = false;
      memtest86 = {
        enable = true;
        entryFilename = "memtest86.conf";
      };
      netbootxyz = {
        enable = true;
        entryFilename = "netbootxyz.conf";
	  };
    };
    timeout = 0;
    efi.canTouchEfiVariables = true;
  };
}
