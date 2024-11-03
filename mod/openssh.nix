{ ... }:
{
	services.openssh = {
		enable = true;
		ports = [ 22 ];
		settings = {
			PasswordAuthentication = true;
			AllowUsers = [ "andofwinds" "git" ];
		};
	};
}
