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
					family = "Cartograph CF";
					style = "Normal";
				};

				italic = {
					family = "Cartograph CF";
					style = "Italic";
				};

				bold = {
					family = "Cartograph CF";
					style = "Bold";
				};

				size = 12.5;
				offset = {
					y = 2;
				};
			};

			colors = {
				primary = {
					background = "${base16.base00}";
					foreground = "${base16.base08}";
				};
				
				cursor = {
					text = "${base16.base05}";
					cursor = "${base16.base08}";
				};

				normal = {
					black = "${base16.base01}";
					red = "${base16.base08}";
					green = "${base16.green}";
					yellow = "${base16.base09}";
					blue = "${base16.base13}";
					magenta = "${base16.base14}";
					cyan = "${base16.base12}";
					white = "${base16.const_white}";
				};
				bright = {
					black = "${base16.base02}";
					red = "${base16.base15}";
					green = "${base16.green}";
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
