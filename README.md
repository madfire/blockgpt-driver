# BlockGPT Driver

This repository stores downloadable driver installers used by BlockGPT Link for local hardware support.

## Current payload

- `darwin/`: macOS driver installers and helper script

## Release convention

The downloader filters release assets by platform and architecture. For macOS, publish release assets named like:

- `blockgpt-driver-darwin-arm64.zip`
- `blockgpt-driver-darwin-x64.zip`

Both archives can contain the same installer payload if the vendor package is universal.

## Build release assets

```bash
./scripts/package-release.sh
```

The script writes release archives into `dist/`.

## Product role

This repository supports smoother first-time setup for BlockGPT classroom and maker deployments by separating driver distribution from the main app installer.
