[fisherman]: https://github.com/fisherman/fisherman

# [fisherman] brew tap

[![](https://img.shields.io/badge/fisherman-3.2.7-blue.svg)](https://github.com/jorgebucaran/fisher/releases)

## Usage

```shell
brew tap bbatsche/fisher
```

Then choose to install:

* the latest stable version of [fisherman]

  ```sh
  brew install fisherman
  ```

* or latest commits from the `master` branch

  ```sh
  brew install --HEAD fisherman
  ```

When you `brew update` this tap will be automatically updated, then you can upgrade fisherman as any other formula:

```sh
brew update
brew upgrade fisherman
```

## Maintaining

Update the two fields in [`fisherman.rb`](./fisherman.rb#L5-L6):

- the version of release tarball in the `url`
- `sha256` which can be obtained with `shasum -a 256 [version].tar.gz`
