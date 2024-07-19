{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
		ohMyZsh = {
			enable = true;
			theme = "bira";
		};
  };

  users.defaultUserShell = pkgs.zsh;
}
