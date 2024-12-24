{ pkgs, ... }:
{
	programs.nix-ld = {
		enable = true;

		libraries = with pkgs; [
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
		];
	};
}
