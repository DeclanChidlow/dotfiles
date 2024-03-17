{
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;
programs.virt-manager.enable = true;

home-manager.users.vale = {
	dconf.settings = {
		"org/virt-manager/virt-manager/connections" = {
			autoconnect = ["qemu:///system"];
			uris = ["qemu:///system"];
		};
	};
};
}
