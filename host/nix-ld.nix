{ pkgs, ... }:
let
	libs = with pkgs; [
		stdenv.cc.cc
		stdenv.cc
		libgcc
		glib
		xorg.libXext
		xorg.libX11
		xorg.libXrender
		xorg.libXtst
		xorg.libXi
		freetype
		fontconfig
		icu
		bison
		flex
		gmp
		libmpc
		mpfr
		texinfo
		isl
		gtk3
		libGL
	];

in {
	programs.nix-ld = {
		enable = true;

		libraries = libs;
	};
}
