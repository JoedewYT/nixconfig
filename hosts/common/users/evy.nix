{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.evy = {
    initialHashedPassword = "$y$j9T$TG7//ZL/Ttqb/LkH1psRV/$cDmrRUcpxana8mJ4xvFylQb50SQP7KQhVVf/ieYFG25";
    isNormalUser = true;
    description = "Evelyn";
    extraGroups = [ "networkmanger" "wheel" "audio" "video" ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
 };
 home-manager.users.evy =
   import evy/${config.networking.hostName}.nix;
}
      
