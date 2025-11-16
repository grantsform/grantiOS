# Gran'tios Build Variants

Gran'tios now supports two different image variants:

## Desktop Variant (`grantios-desktop`)
- **Base Image**: `ghcr.io/ublue-os/bazzite-nvidia-open:latest`
- **Purpose**: Gaming and desktop workstation use
- **Includes**: 
  - Full desktop packages (Godot, VS Code, gaming libraries)
  - GPU support and gaming optimizations
  - Desktop development tools
  - Scheme interpreters and desktop utilities

## Server Variant (`grantios-server`)
- **Base Image**: `ghcr.io/ublue-os/base-main:latest`
- **Purpose**: Headless server and container hosting
- **Includes**:
  - Core server packages only
  - CLI tools and server utilities
  - No desktop environment or gaming packages
  - Minimal footprint for server deployment

## Building Images

### Container Images
```bash
# Build desktop variant (default)
just build-desktop

# Build server variant
just build-server

# Build both
just build-desktop && just build-server
```

### VM Images
```bash
# Desktop VM images
just build-desktop-qcow2
just build-desktop-raw
just build-desktop-iso

# Server VM images
just build-server-qcow2
just build-server-raw
just build-server-iso
```

### Running VMs
```bash
# Run desktop VM
just run-desktop-vm-qcow2

# Run server VM
just run-server-vm-qcow2
```

## Default Behavior
The default `Containerfile` and build commands still point to the desktop variant for backward compatibility.

## ISO Configuration Files
- `disk_config/iso-desktop.toml` - Desktop ISO installer configuration
- `disk_config/iso-server.toml` - Server ISO installer configuration  
- `disk_config/disk.toml` - Standard disk configuration for VM images