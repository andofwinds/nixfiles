{ pkgs, ... }:
{
  users = {
		users.andofwinds = {
			isNormalUser = true;
			description = "andofwinds";
			extraGroups = [
				"wheel"
				"dialout"
				"networkmanager"
				"vboxusers"
			];
		};
		defaultUserShell = pkgs.zsh;
	};
	programs.zsh.enable = true;
}
