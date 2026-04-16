# homebrew-grabtoeject

Homebrew tap for [Grab to Eject](https://github.com/mcomisso/ShakeToEject) — a macOS menu bar app that safely ejects external drives when it detects you picking up your laptop.

## Installation

```bash
brew install --cask mcomisso/grabtoeject/grab-to-eject
```

The first command above is shorthand for:

```bash
brew tap mcomisso/grabtoeject
brew install --cask grab-to-eject
```

## Updates

The app handles its own updates via Sparkle. Homebrew's `brew upgrade` is not required — the app will notify you when a new version is available.

## Uninstall

```bash
brew uninstall --cask grab-to-eject
brew untap mcomisso/grabtoeject     # optional: remove the tap
```

Pass `--zap` to also remove preferences and caches:

```bash
brew uninstall --cask --zap grab-to-eject
```

## Requirements

- macOS Sonoma (14.0) or later
- Apple Silicon (arm64)
- MacBook Pro with an Apple Silicon chip that includes the BMI286 IMU — see [hardware support](https://github.com/mcomisso/ShakeToEject#requirements) in the main repo

## License

The tap metadata in this repository is MIT licensed. The app itself is MIT licensed separately.
