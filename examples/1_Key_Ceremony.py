#! /usr/bin/env python38

NUMBER_OF_GUARDIANS: int
QUORUM: int

details: CeremonyDetails
guardians: List[Guardian]

# Setup Guardians
for i in range(NUMBER_OF_GUARDIANS):
  guardians.append(
    Guardian(f"some_guardian_id_{str(i)}", i, NUMBER_OF_GUARDIANS, QUORUM)
  )

mediator = KeyCeremonyMediator(details)

# Attendance (Public Key Share)
for guardian in guardians:
  mediator.announce(guardian)

# Orchestation (Private Key Share)
orchestrated = mediator.orchestrate()

# Verify (Prove the guardians acted in good faith)
verified = mediator.verify()

# Publish the Joint Public Key
joint_public_key = mediator.publish_joint_key()
