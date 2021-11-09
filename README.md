# electionguard-client-hs

![](electionguard-banner.svg)

A Haskell client for the [Web API][webapi] of Microsoft's [ElectionGuard][electionguard].

## Quick Start

Install [Nix][nix] + [Arion][arion] + [Docker][docker].
If possible, also [add the IOHK binary cache][bincache]
to avoid building lots of extra packages on your own machine.

Now use `arion` to spin up a few containers based on the official API image.
By default there are 3 guardians accessible on ports 8101-8103,
and 2 mediators accessible on ports 8201-8202:

```
$ docker pull electionguard/electionguard-web-api:latest
....

$ arion up -d
/nix/store/ykl19ajxg64igr7gs156vj3v0dz9ijff-docker-compose.yaml
Creating network "electionguard-client-hs_default" with the default driver
Creating electionguard-client-hs_mediator2_1 ... done
Creating electionguard-client-hs_guardian1_1 ... done
Creating electionguard-client-hs_guardian2_1 ... done
Creating electionguard-client-hs_guardian3_1 ... done
Creating electionguard-client-hs_mediator1_1 ... done

$ docker container ls
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS                                      NAMES
a422513eed4e   3fd0caa0edcb   "/start.sh"   3 seconds ago   Up 2 seconds   80/tcp, 8000/tcp, 0.0.0.0:8202->8202/tcp   electionguard-client-hs_mediator2_1
b525cc4715f2   3fd0caa0edcb   "/start.sh"   3 seconds ago   Up 2 seconds   80/tcp, 8000/tcp, 0.0.0.0:8102->8102/tcp   electionguard-client-hs_guardian2_1
7d74320a0479   3fd0caa0edcb   "/start.sh"   3 seconds ago   Up 1 second    80/tcp, 8000/tcp, 0.0.0.0:8201->8201/tcp   electionguard-client-hs_mediator1_1
51178c6ae2e4   3fd0caa0edcb   "/start.sh"   3 seconds ago   Up 2 seconds   80/tcp, 8000/tcp, 0.0.0.0:8103->8103/tcp   electionguard-client-hs_guardian3_1
1efd48c247f9   3fd0caa0edcb   "/start.sh"   3 seconds ago   Up 2 seconds   80/tcp, 8000/tcp, 0.0.0.0:8101->8101/tcp   electionguard-client-hs_guardian1_1
```

Now for the Haskell client.

```
$ nix-shell
[nix-shell]$ cabal v2-repl
[nix-shell]$ cabal v2-run electionguard-client-exe
[nix-shell]$ cabal v2-run electionguard-client-test
```

Or one at a time like this:

```
$ nix-shell --run 'cabal v2-repl'
$ nix-shell --run 'cabal v2-run electionguard-client-exe'
$ nix-shell --run 'cabal v2-run electionguard-client-test'
```

[nix]: https://nixos.org
[arion]: https://github.com/hercules-ci/arion
[docker]: https://docs.docker.com/get-docker/
[electionguard]: https://github.com/microsoft/electionguard-python
[webapi]: https://electionguard-web-api.readthedocs.io/en/latest/
[bincache]: https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache
