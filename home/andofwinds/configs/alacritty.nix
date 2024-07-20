{ base16, ... }:
{
	programs.alacritty = {
		enable = true;
		settings = {
			window = {
				dimensions = {
					lines = 25;
					columns = 80;
				};

				decorations = "buttonless";
				opacity = 1.0;
			};

			font = {
				normal = {
					family = "JetBrainsMono Nerd Font";
					style = "Normal";
				};

				italic = {
					family = "JetBrainsMono Nerd Font";
					style = "Italic";
				};

				bold = {
					family = "JetBrainsMono Nerd Font";
					style = "Bold";
				};

				size = 12.0;
			};

			colors = {
				primary = {
					background = "${base16.base00}";
					foreground = "${base16.base04}";
				};
				
				cursor = {
					text = "${base16.base05}";
					cursor = "${base16.base08}";
				};

				normal = {
					black = "${base16.base01}";
					red = "${base16.base08}";
					green = "${base16.base11}";
					yellow = "${base16.base09}";
					blue = "${base16.base13}";
					magenta = "${base16.base14}";
					cyan = "${base16.base12}";
					white = "${base16.const_white}";
				};
				bright = {
					black = "${base16.base02}";
					red = "${base16.base15}";
					green = "${base16.base11}";
					yellow = "${base16.base10}";
					blue = "${base16.base13}";
					magenta = "${base16.base06}";
					cyan = "${base16.base12}";
					white = "${base16.const_white}";
				};
			};
		};
	};
}
