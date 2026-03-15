{ config, lib, pkgs, ... }:

let
  inherit (lib)
    head
    splitString
  ;
in
{
  device = {
    name = "qemu/mips-32";
    config.qemu.enable = true;
  };

  hardware = {
    cpu = "generic-mips32";
  };
  wip.kernel.package = pkgs.stdenv.mkDerivation {
    inherit (pkgs.linux_6_12) src;
    version = head (splitString "-" pkgs.linux_6_12.version);
  };
  wip.kernel.defconfig = "malta_defconfig";

  device.config.qemu = {
    qemuOptions = [
      "-machine malta"
    ];
  };
}
