{ pkgs, ... }:
let
	aa64Pkgs = pkgs.pkgsCross.aarch64-embedded;
in {}
