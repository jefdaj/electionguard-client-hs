#! /usr/bin/env python38

internal_manifest: InternalManifest
context: CiphertextElectionContext
ballot: PlaintextBallot

# Configure an encryption device
device = EncryptionDevice(generate_device_uuid(), "Session", 12345, "polling-place-one")
encrypter = EncryptionMediator(internal_manifest, context, device)

# Encrypt the ballot
encrypted_ballot: CiphertextBallot = encrypter.encrypt(ballot)
