# Cloister Homebrew Tap

This is the official Homebrew tap for
[Cloister](https://github.com/yi427/Cloister).

## Install

Install Cloister and its Apple `container` dependency with:

```sh
brew install yi427/tap/cloister
```

Homebrew builds the CLI from the immutable release source. Installation does
not start Apple `container`, create a Profile, or pull the guest image. Run the
interactive setup afterwards:

```sh
cloister init
cloister check
```

## Upgrade

```sh
brew update
brew upgrade yi427/tap/cloister
```

## Brewfile

Use the fully qualified Formula in a `Brewfile`:

```ruby
tap "yi427/tap"
brew "yi427/tap/cloister"
```

## Documentation

See the [Cloister documentation](https://github.com/yi427/Cloister#readme) for
the Profile, security boundary, and first-run workflow.
