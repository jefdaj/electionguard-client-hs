# electionguard-client-hs

![](electionguard-banner.svg)

A Haskell client for the
[Web API](https://electionguard-web-api.readthedocs.io/en/latest/) of Microsoft's
[ElectionGuard](https://github.com/microsoft/electionguard-python).

## Quick Start

[Get Docker](https://docs.docker.com/get-docker/)
if needed, then start the guardian and mediator API containers.
Output should be something like this:

```
$ sudo ./docker.sh
docker.io/electionguard/electionguard-web-api:latest

starting electionguard-guardian...
e6ebef0e1f58b0614425c9b76e03f60ada33102afa9e6242ecf859d2b0f61a80
go here for details of the API:
  http://localhost:8001/docs
  http://localhost:8001/redoc

starting electionguard-mediator...
07d82f2cbd5075e028e2511ae55886b7e31edf4836cd8e736430b3c2ccc073c7
go here for details of the API:
  http://localhost:8002/docs
  http://localhost:8002/redoc
```

Now for the Haskell client.
You'll need [Nix](https://nixos.org).

If possible, also [add the IOHK binary
cache](https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache)
to avoid building lots of extra packages on your own machine.
Then you can run `cabal` commands inside `nix-shell` like this:

```
$ nix-shell
[nix-shell]$ cabal v2-repl
[nix-shell]$ cabal v2-run electionguard-client-exe
[nix-shell]$ cabal v2-run electionguard-client-test
```

Or like this:

```
$ nix-shell --run 'cabal v2-repl'
$ nix-shell --run 'cabal v2-run electionguard-client-exe'
$ nix-shell --run 'cabal v2-run electionguard-client-test'
```
