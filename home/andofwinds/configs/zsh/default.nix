{ ... }:
{
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		oh-my-zsh = {
			enable = true;
			theme = "kanagawa";
			custom = "${./.}";
		};
		shellAliases = {
			"homesw" 		= "home-manager switch --flake ~/nix";
			"sudonixsw" = "sudo nixos-rebuild switch --flake ~/nix";
			"clion" 		= "/home/andofwinds/bin/clion/bin/clion.sh";
		};
	};
}
