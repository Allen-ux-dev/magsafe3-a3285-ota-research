#!/bin/sh
# Read-only inspection. No system configuration changes.
dyld_info -disassemble /System/Library/PrivateFrameworks/CoreUARP.framework/Versions/A/CoreUARP |
awk '/^[-+]\[UARPSupportedAccessoryA2363 / {p=1} /^[-+]\[/ && !/^[-+]\[UARPSupportedAccessoryA2363 / {p=0} p'

dyld_info -disassemble /System/Library/PrivateFrameworks/CoreUARP.framework/Versions/A/CoreUARP |
awk '/^[-+]\[UARPSupportedAccessoryUSBPD / {p=1} /^[-+]\[/ && !/^[-+]\[UARPSupportedAccessoryUSBPD / {p=0} p'
