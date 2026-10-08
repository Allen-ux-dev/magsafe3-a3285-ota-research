#!/bin/sh
# Read-only inspection. No system configuration changes.
strings -a /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/Support/accessoryupdaterd |
grep -E '^(isOTADisabled|otaDisabled|supportsDeveloperSettings|disabledProductIdentifiers|AUDeveloperSettingsDatabase|Entry found in AUDeveloperSettingsDatabase.*OTA Update disabled.*)$'
