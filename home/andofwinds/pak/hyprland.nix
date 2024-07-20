{ ... }:
let
	terminal = "kitty";
	explorer = "nautilus";
	browser  = "firefox";
	audioStep = "2";
	mute_vol = ./mute.sh;
	micmute_vol = ./micmute.sh;
in {
	wayland.windowManager.hyprland = {
		enable = true;

		settings = {
			monitor = [
				"eDP-1, 1920x1080@60, 0x1080, 1"
				",  1920x1080@60, 0x0, 1"
			];

			general = {
				gaps_in = 3;
				gaps_out = 30;
				layout = "dwindle";
				allow_tearing = "false";
				border_size = 1;
			};

			decoration = {
				rounding = 3;

				blur = {
					enabled = true;
					size = 3;
					passes = 2;
				};

				active_opacity = 0.95;
				inactive_opacity = 0.85;
			};

			animations = {
				enabled = true;
				
				bezier = "dbez, 0.02, 0.91, 0.26, 0.98";

				animation = [
					"windows,    1, 5, dbez, slide top"
					"windowsOut, 1, 5, dbez, slide bottom"
					"border,     1, 8, default"
					"workspaces, 1, 4, dbez"
				];
			};

			input = {
				kb_layout = "us,ru";
				kb_variant = "";
				kb_options = "grp:win_space_toggle";
				kb_rules = "";
				kb_model = "";

				sensitivity = "0";

				touchpad.natural_scroll = true;
			};

			"$mod" = "SUPER";
			bind = [
				"$mod, Q, exec, ${terminal}"
				"$mod, C, killactive"
				"$mod, M, exit"
				"$mod, E, exec, ${explorer}"
				"$mod, B, exec, ${browser}"

				"$mod, D, pseudo"
				"$mod, F, togglefloating"
				"$mod, S, togglesplit"

				"$mod, h, movefocus, l"
				"$mod, l, movefocus, r"
				"$mod, k, movefocus, u"
				"$mod, j, movefocus, d"

				"$mod, 1, workspace, 1"
				"$mod, 2, workspace, 2"
				"$mod, 3, workspace, 3"
				"$mod, 4, workspace, 4"
				"$mod, 5, workspace, 5"
				"$mod, 6, workspace, 6"
				"$mod, 7, workspace, 7"
				"$mod, 8, workspace, 8"
				"$mod, 9, workspace, 9"
				"$mod, 0, workspace, 10"

				"$mod SHIFT, 1, movetoworkspace, 1"
				"$mod SHIFT, 2, movetoworkspace, 2"
				"$mod SHIFT, 3, movetoworkspace, 3"
				"$mod SHIFT, 4, movetoworkspace, 4"
				"$mod SHIFT, 5, movetoworkspace, 5"
				"$mod SHIFT, 6, movetoworkspace, 6"
				"$mod SHIFT, 7, movetoworkspace, 7"
				"$mod SHIFT, 8, movetoworkspace, 8"
				"$mod SHIFT, 9, movetoworkspace, 9"
				"$mod SHIFT, 0, movetoworkspace, 10"
			];

			bindel = [
				", XF86AudioLowerVolume, exec, amixer -q sset Master ${audioStep}%-"
				", XF86AudioRaiseVolume, exec, amixer -q sset Master ${audioStep}%+"
				", XF86MonBrightnessUp,   exec, brightnessctl set 5%+"
				", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
				
			];
			bindl = [
				", XF86AudioMute, exec, ${mute_vol}"
				", XF86AudioMicMute, exec, ${micmute_vol}"
			];

			bindm = [
				"$mod, mouse:272, movewindow"
				"$mod, mouse:273, resizewindow"
			];
		};
	};
}
