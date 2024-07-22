{
boot.loader = {
	systemd-boot = {
    		enable = true;
			editor = false;
		memtest86 = {
			enable = true;
			sortKey = "o_memtest86";
		};
		netbootxyz = {
			enable = true;
			sortKey = "o_netbootxyz";
		};
	};
	timeout = 0;
	efi.canTouchEfiVariables = true;
};
}
