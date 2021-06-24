#! /usr/bin/env python38

# There is another class-based example in the markdown in addition to this
# function-based one, but I think the function-based one will probably
# translate more directly to Haskell.

from electionguard.ballot_box import accept_ballot

internal_manifest: InternalManifest
encryption: CiphertextElection
store: DataStore
ballots_to_cast: List[CiphertextBallot]
ballots_to_spoil: List[CiphertextBallot]

for ballot in ballots_to_cast:
    submitted_ballot = accept_ballot(
        ballot, BallotBoxState.CAST, internal_manifest, encryption, store
    )

for ballot in ballots_to_spoil:
    submitted_ballot = accept_ballot(
        ballot, BallotBoxState.SPOILED, internal_manifest, encryption, store
    )
