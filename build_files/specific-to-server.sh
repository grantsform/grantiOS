#!/bin/bash

set -ouex pipefail

# Run shared setup first
/ctx/shared-between.sh

# Server-specific packages (if any) can be added here
# Currently all server packages are in shared-between.sh