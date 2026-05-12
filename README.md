# homebrew-atask

Homebrew tap for [atask](https://github.com/mph-asystem/atask) — task management for asystem.

## Install

```bash
brew install mph-llm-experiments/atask/atask
```

## What this is

A macOS desktop wrapper (Tauri 2) around the atask web frontend. Reads and writes against `atask.puddingtime.net`. macOS Apple Silicon only. Unsigned — the cask's `postflight` strips Gatekeeper quarantine so it launches without right-click → Open.

Version and sha256 in `Casks/atask.rb` are auto-bumped by the atask repo's release workflow on every `v*` tag.
