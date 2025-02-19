{ ... }: {
	systemd.services.ciadpi = {
		enable = true;
		description = "ByeDPI";
		after = [ "multi-user.target" ];
		wantedBy = [ "multi-user.target" ];
		serviceConfig = {
			ExecStart = "/opt/byedpi/ciadpi --ip 0.0.0.0 --port 1080 -s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1 +s -s-1 -An";
			Restart = "on-failure";
			RestartSec = 5;
		};
	};
}
