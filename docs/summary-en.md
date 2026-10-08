# Findings and limitations

The goal is to assess whether MagSafe 3 A3285 can stay on firmware 3.1.12 while avoiding a candidate 3.2.0 update and retaining normal charging. Neither firmware pinning nor charging preservation under an OTA block has been demonstrated.

Static analysis of macOS 26.3.2 (25D2150), arm64e, confirms:

1. The legacy-named UARPSupportedAccessoryA2363 class returns A3285 as its primary Apple model, A2363 as an alternative model, and 0x7800 as its product ID.
2. AUDeveloperSettingsDatabase reads an accessories dictionary. The OTA check reads the per-record key isOTADisabled and converts it with boolValue. The otaDisabled property name must not be assumed to be the writable database key.
3. The asset-settings method can set an automaticUpdatesDisabled output flag. Its firmware query caller includes a supportsInternalSettings check and a remoteURL condition; supportsDeveloperSettings alone does not establish whether the OTA check is reachable.
4. disabledProductIdentifiers has multiple consumers. One daemon path checks the first dot-separated component. USBPD checks the complete accessory identifier and skips further accessory addition when disabled. Charging effects remain untested.
5. Supported accessory identifiers fall back to appleModelNumber, or concatenate productGroup and productNumber when both exist. A3285 is a candidate default identifier, not a runtime-verified configuration recommendation.

No preferences, services, system files or firmware were modified. No SIP change or updater RPC was used. Raw historical attachments contain personal identifiers and are excluded. Only selected static excerpts and system-component hashes are distributed.

Current cable firmware and live database entries remain unverified. Earlier and later power snapshots disagreed about charging state; neither proves continuous charging health. No blocking recipe is supplied.

Addresses are sample-specific. CoreUARP was inspected using the system dyld_info tool against the shared cache. The old first-phase ZIP was not recovered; this package does not claim to reproduce its full contents.
