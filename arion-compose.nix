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

  # make one vm entry, suitable for merging into the main services attrset
  mkApiVmAttrs = mode: startPort: n: {
    name = mode + builtins.toString n;
    value = mkApiVm mode (startPort + n);
  };

  # make a list of vm entries with the same mode, suitable for merging into the main services attrset
  mkApiVmAttrList = mode: startPort: nVms: map (mkApiVmAttrs mode startPort) (nixpkgs.lib.range 1 nVms);

  # make the entire services attrset
  # the start ports are arbitrary but should match the haskell code
  # TODO load both from a common test config file
  mkServices = nGuardians: nMediators:
    builtins.listToAttrs (mkApiVmAttrList "guardian" 8100 nGuardians) //
    builtins.listToAttrs (mkApiVmAttrList "mediator" 8200 nMediators);

in {
  # TODO get n guardians + mediators from somewhere?
  services = mkServices 3 2;
}