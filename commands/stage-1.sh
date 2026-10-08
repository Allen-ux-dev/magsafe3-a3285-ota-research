#!/bin/sh
# Read-only inspection. No system configuration changes.
sw_vers
pmset -g batt | sed -E 's/\(id=[0-9]+\)/(id=REDACTED)/g'
shasum -a 256 /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/Support/accessoryupdaterd
shasum -a 256 /System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/UARPUpdaterServiceUSBPD.xpc/Contents/MacOS/UARPUpdaterServiceUSBPD
