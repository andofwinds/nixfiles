{ ... }:
{
  users.users.andofwinds = {
    isNormalUser = true;
    description = "andofwinds";
    extraGroups = [
      "wheel"
      "dialout"
      "networkmanager"
    ];
  };
}
