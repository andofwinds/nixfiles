{ ... }:
{
  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "23.11";

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Europe/Moscow";

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
}
