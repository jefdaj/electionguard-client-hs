#! /usr/bin/env python38

# This was part of markdown doc #3, but seems like a separate step

internal_manifest: InternalManifest
context: CiphertextElectionContext
store: DataStore

tally = tally_ballots(store, internal_manifest, context)
assert(tally is not None)
