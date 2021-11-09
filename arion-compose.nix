let
  # TODO is arion supposed to load these separately using arion-pkgs.nix?
  sources = import ./nix/sources.nix {};
  nixpkgs = import sources.nixpkgs {};

  mkApiVm = mode: port: {

    # service.image = "electionguard/electionguard-web-api:latest";
    service.image = "3fd0caa0edcb"; # TODO is this how you pin docker images?

    service.environment.API_MODE = mode;

    # TODO are ports 80 and 8100 actually exposed, or only to the host system? how to close them?
    service.environment.PORT = port;
    # service.expose = []; # [ ( builtins.toString port) ];
    service.ports  = [ ((builtins.toString port) + ":" + (builtins.toString port)) ];

    # service.volumes = [ "${toString ./.}/postgres-data:/var/lib/postgresql/data" ];

  };

  mkApiVmAttrs = mode: startPort: n: {
    name = mode + builtins.toString n;
    value = mkApiVm mode (startPort + n);
  };

  # the start ports are arbitrary
  mkGuardians = nGuardians: map (mkApiVmAttrs "guardian" 8100) (nixpkgs.lib.range 1 nGuardians);
  mkMediators = nMediators: map (mkApiVmAttrs "mediator" 8200) (nixpkgs.lib.range 1 nMediators);

  mkServices = nGuardians: nMediators:
    builtins.listToAttrs (mkGuardians nGuardians) //
    builtins.listToAttrs (mkMediators nMediators);

in {
  # TODO get n guardians + mediators from somewhere?
  services = mkServices 3 2;
}
