{
# Better power button
services.logind.extraConfig = "
	HandlePowerKey=ignore
	HibernateDelaySec=2700
	HandleLidSwitch=suspend-then-hibernate
";
 
powerManagement.enable = true;
services.thermald.enable = true;
services.tlp = {
	enable = true;
	settings = {
		CPU_SCALING_GOVERNOR_ON_AC = "performance";
		CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
    
		CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
		CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
		CPU_BOOST_ON_BAT = 0;

		DEVICES_TO_DISABLE_ON_STARTUP = "bluetooth";
	};
};
}
