#! /usr/bin/env python38

internal_manifest: InternalManifest       # Load the election manifest
context: CiphertextElectionContext          # Load the election encryption context
encrypted_Tally: CiphertextTally            # Provide a tally from the previous step
          
available_guardians: List[Guardian]         # Provite the list of guardians who will participate
missing_guardians: List[str]                # Provide a list of guardians who will not participate

mediator = DecryptionMediator(internal_manifest, context, encrypted_tally)

# Loop through the available guardians and annouce their presence
for guardian in available_guardians:
    if (mediator.announce(guardian) is None):
        break

# loop through the missing guardians and compensate for them
for guardian in missing_guardians:
    if (mediator.compensate(guardian) is None):
        break

# Generate the plaintext tally
plaintext_tally = mediator.get_plaintext_tally()

# The plaintext tally automatically includes the election tally and the spoiled ballots
contest_tallies = plaintext_tally.contests
spoiled_ballots = plaintext_tally.spoiled_ballots
