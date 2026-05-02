# blockgpt-driver

This repository stores driver installers that BlockGPT Link can download and unpack for local hardware support.

## Current payload

- `darwin/`: macOS driver installers and helper script

## Release convention

The current downloader filters release assets by platform and architecture. For macOS, publish release assets named like:

- `blockgpt-driver-darwin-arm64.zip`
- `blockgpt-driver-darwin-x64.zip`

Both archives can contain the same installer payload if the vendor package is universal.

## Build release assets

```bash
./scripts/package-release.sh
```

The script writes release archives into `dist/`.
