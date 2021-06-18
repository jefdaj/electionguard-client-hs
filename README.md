# electionguard-client

## Development

If possible, [add the IOHK binary
cache](https://input-output-hk.github.io/haskell.nix/tutorials/getting-started/#setting-up-the-binary-cache)
first to avoid building lots of extra packages.

```
nix-shell --run 'cabal repl electionguard-client'
nix-shell --run 'cabal run electionguard-client-exe'
nix-shell --run 'cabal run electionguard-client-test'
```
