{ config, pkgs, ... }:let
    sketchybarPath = "${config.home.homeDirectory}/.nixos/home/configs/sketchybar";
in
{
  home.packages = with pkgs; [
    sketchybar
  ];
  xdg.configFile."sketchybar".source = config.lib.file.mkOutOfStoreSymlink sketchybarPath;
}