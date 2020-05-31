# Dotfiles

My personal dotfiles. I use [Gnu Stow](https://www.gnu.org/software/stow/) to manage the dotfile symlinks.

## Motivation

This repository houses my personal dotfiles. The intent is that, should I ever need to set up a new computer, I can follow these steps to expedite setting up my personal development environment.

As a bonus, ensuring a consistent environment now may help me avoid a [tangled mess](https://xkcd.com/1987/) in the future.

## Prerequisites

1. Homebrew requires the Xcode command line tools. You may choose to install them from the command line (recommended), by downloading them from [the Apple developer site](https://developer.apple.com/downloads), or by downloading Xcode from [the Mac app store](https://itunes.apple.com/us/app/xcode/id497799835).

   ```bash
   xcode-select --install
   ```

   > This may take a _long_ time; please be patient!

2. Install [Homebrew](https://brew.sh/) from the command line.

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
   ```

## How to use

### Initialize your own dotfiles repository

If you have not already created a dotfiles repository, it is very easy to get started! You likely already have your own set of opinionated dotfiles on your development machine.

> Note: These steps assume you already meet the prerequisites listed above.

Start by creating a new `git` repository and `cd`-ing into it.

```bash
git init ~/.dotfiles
cd ~/.dotfiles
```

> Note: I prefer to keep my dotfiles in a hidden-by-default repository in my home directory. If you wish to browse the `.dotfiles` directory from the Finder, you may need to press `⌘+⇧+.` (`command+shift+period`) in a Finder window to see hidden items. A directory like `~/dotfiles` (without the leading dot) would also be suitable.

For each "type" of dotfiles that you wish to manage, you can move them into a directory inside of the working copy of your dotfiles. If you wanted to stow your `git` configuration, you might run the following series of commands.

```bash
mkdir -p ~/.dotfiles/git
mv ~/.git* ~/.dotfiles/git
cd ~/.dotfiles
stow git
```

> Note: If `stow` is not found, you will need to run `brew install stow`.

Whenever you add new files to an existing directory in your dotfiles repository, you will need to re-`stow` the directory. If you were to update your `git` configuration to include a `.gitconfig_local` file, you might run the following series of commands.

```bash
mkdir -p ~/.dotfiles/git

cat >> ~/.gitconfig_local << EOF
[user]
  name  = First Last
  email = your_email@example.com
[github]
  user  = your-git-user
EOF

mv ~/.gitconfig_local ~/.dotfiles/git/.gitconfig_local
cd ~/.dotfiles
stow git
```

Now your home directory should reflect a symlink to the `.gitconfig_local` file in your dotfiles!

```bash
$ cd ~/
$ ls -al .gitconfig_local
lrwxr-xr-x  1 mhheise  staff  30 Apr  5 12:08 .gitconfig_local@ -> .dotfiles/git/.gitconfig_local
```

Whenever you modify existing files, you will likely want those changes to reflect in source control as well.

```bash
git add -A
git commit -m "your descriptive commit message"
git push
```

If you ever need to un-`stow` all of your dotfiles at once, `stow` can do so.

```bash
cd ~/.dotfiles
stow -D
```

You might find that `stow` fails if you attempt to symlink in such a way that two files of the same name would exist in a single directory. If this is the case, you should take a backup of the conflicting file before creating the symlink, like shown here for `.gitconfig`.

```bash
mv ~/.gitconfig ~/.gitconfig_backup
```

### Take inspiration from my dotfiles repository

You can also choose to use my dotfiles as a starting point towards maintaining your own dotfiles. You should feel free to copy or use any or all parts of my dotfiles for your own personal use, but you should keep the following points in mind:

- Please exercise caution running any scripts that you have not personally reviewed! I would suggest familiarizing yourself with the files in this repository so that you can understand what will happen before it happens.
- The files that reside here are inherently opinionated as they are designed to capture how I like to configure my computer.

You will want to fork this repository and adjust the files to match your preferences; in particular, you will want to pay attention to the `setup.sh` script.

Once you have personalized your dotfiles, you can run the below set of commands to clone your forked dotfiles repository from source control and run the first-time setup.

```bash
git clone git@github.com:your-git-user/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x setup.sh
./setup.sh
```

If you have used my `.gitconfig` file for inspiration, you **must** add your own `user.name`, `user.email`, and `github.user` entries to your `.gitconfig` file (or to a `.gitconfig_local` file as I have done). If I were to include my own `git` information in this repository, your commits could be mistakenly credited to me!

## Additional setup

The list below enumerates additional steps that I would take to set up my development environment, but are not strictly required for the dotfiles to work. Ensure that the Xcode command line tools and Homebrew are installed before performing any additional setup.

- Modify the `Brewfile` to support your needs, then run `brew bundle` to install everything.

- Set up [commit signature verification](https://help.github.com/en/github/authenticating-to-github/managing-commit-signature-verification)

- Use an SSH key to [connect to GitHub](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

### Open files in Sublime Text from the command line

I prefer to open files this way if I only need to make a quick edit. The only requirement is that Sublime Text 3 exists in your `/Applications` directory; if it is not present, then run `brew cask install sublime-text`.

```bash
ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

> Do note that Sublime Text 3 [requires a license](https://www.sublimetext.com/3) for continued use.

### Switch to the [fish shell](https://fishshell.com/)

I use the `fish` shell rather than `bash` or `zsh`, since `fish` supports syntax highlighting, autosuggestions, and tab completions out-of-the-box. Assuming `brew info fish` succeeds, run the below commands to make `fish` the default shell.

```bash
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

> Do note that the `fish` shell is [_not_ fully POSIX-compliant by design](https://fishshell.com/docs/current/design.html); that said, I find the ease-of-use to be more important than the inconvenience of needing to run `bash <script>.sh` every so often.

### Install [nvm](https://github.com/nvm-sh/nvm)

Run the below command to install `nvm`, then verify the installation with `nvm --version`.

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

> If you are using the `fish` shell, check out [fish-nvm](https://github.com/FabioAntunes/fish-nvm).

Short list of useful commands:

- List all of the supported Node releases available to install with `nvm ls`.
- Install the latest Node release and switch to it with `nvm use latest`.
- Set the default Node version with `nvm alias default node`.

### Install [yarn](https://yarnpkg.com/)

Run the below command to install `yarn`, then verify the installation with `yarn --version`.

```bash
curl -o- -L https://yarnpkg.com/install.sh | bash
```

> If you are using the `fish` shell, you will need to add `set -gx PATH $HOME/.yarn/bin $PATH` to your `config.fish` file.

I would suggest using the install script rather than installing via Homebrew.

> This is because installing `yarn` through Homebrew installs `node`, since `yarn` is dependent on `node` to function; however, we are managing `node` via `nvm`. There once existed an option to install `yarn` without `node`, but this no longer applies ([1](https://github.com/Homebrew/homebrew-core/commit/a34c721586fece6d36d9b60fec5760e1b3361f11), [2](https://github.com/yarnpkg/yarn/issues/3255)).

### Set up [Dart](https://dart.dev/)

Use `brew info dart` to determine if `dart` has been successfully installed; if not:

1. Run `brew tap dart-lang/dart` to pull in the official Homebrew tap.
2. Run `brew install dart` to install the Dart SDK.
3. Verify with `dart --version`.

> Note: If you only plan to use Dart to develop with Flutter, you should install Dart through the Flutter steps instead.

### Set up [.NET Core](https://docs.microsoft.com/en-us/dotnet/core/about)

Use `brew cask info dotnet` to determine if `dotnet` has been successfully installed; if not, run `brew cask install dotnet`, then verify with `dotnet --version`.

### Set up [Flutter](https://flutter.dev/)

At the time of this writing, Flutter is [not easily installable via Homebrew](https://github.com/flutter/flutter/issues/14050). What follows is an abridged set of steps based on the [official docs](https://flutter.dev/docs/get-started/install/macos).

These steps to set up the iOS and Android toolchains will install Xcode and Android Studio, but you should consider installing VS Code and the Flutter extension to do development. This will provide code completion, syntax highlighting, and debug support in VS Code.

1. Download the Flutter SDK with `git clone https://github.com/flutter/flutter.git ~/Dev/flutter -b beta`

   > Note: You may choose to use a directory other than `~/Dev/flutter` and a release channel other than `beta` by making the appropriate substitutions above.

2. Add `flutter` to your `PATH`.

   > If you are using the `fish` shell, you will need to add `set -gx PATH $HOME/Dev/flutter/bin $PATH` to your `config.fish` file.

   You can run `which flutter` to verify that the `flutter` tool is available on your `PATH`.

#### iOS setup

1. If you have not downloaded the full version of Xcode, you must do so to run apps on the iOS simulator. You can install Xcode from [the Mac app store](https://itunes.apple.com/us/app/xcode/id497799835).

2. Run the below commands to configure the Xcode command line tools to use the newly installed version of Xcode.

   ```bash
   sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
   sudo xcodebuild -runFirstLaunch
   ```

3. Ensure that the Xcode license agreement is signed. You can either open Xcode or run `sudo xcodebuild -license` to do so.

4. Run the below commands to install and set up CocoaPods. This is required to deploy apps to physical iOS devices.

   ```bash
   gem install cocoapods
   pod setup
   ```

   > Note: If you receive a permissions error when installing CocoaPods, then your Ruby environment may not be set up correctly. Run `ruby --version` to see if the `system` version is being used; if it is, you should follow the steps to install Ruby provided here to manage a Ruby environment with `rbenv`.

5. Run `flutter doctor` to see if there are any additional iOS setup steps.

#### Android setup

1. Install Android Studio and the Android SDK via Homebrew.

   ```bash
   brew cask install android-studio android-sdk
   ```

2. Run the below command to check that hardware acceleration is enabled on your machine.

   ```bash
   kextstat | grep intel
   ```

   If you do not see `com.intel.kext.intelhaxm` in the output, then use the [Android developer docs](https://developer.android.com/studio/run/emulator-acceleration) to configure hardware acceleration.

3. Download at least one version of the Android SDK. You can use `sdkmanager --list` to find an appropriate system image; here, I have chosen the latest available at the time of this writing.

   ```bash
   sdkmanager --install "system-images;android-29;google_apis;x86_64"
   ```

4. Create an Android emulator using an installed Android SDK.

   ```bash
   echo "no" | avdmanager -v -f create avd -n "Pixel_API_29" -d "pixel" -k "system-images;android-29;google_apis;x86" -g "google_apis" -b "x86"
   ```

5. Run `flutter doctor` to see if there are any additional Android setup steps.

### Set up [Go](https://golang.org/)

Use `brew info go` to determine if `go` has been successfully installed; if not, run `brew install go`, then verify with `go version`.

> If you are using the `fish` shell, you will need to add the following to your `config.fish` file.

```bash
set -xU GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
```

> Note: You should read [how to write Go code](https://golang.org/doc/code.html) to understand how to properly organize Go code to support canonical imports.

### Set up Python with [`pyenv`](https://github.com/pyenv/pyenv) and [`poetry`](https://python-poetry.org/docs/)

I prefer to use `poetry` to manage Python virtual environments rather than [`venv`](https://docs.python.org/3/tutorial/venv.html), but there should be no issue using either.

> Note: You _should not_ simply use the version of Python bundled with macOS. Doing so will pollute your system Python installation, which could cause conflicts for you or other users of your machine.

For `pyenv`:

Use `brew info pyenv` to determine if `pyenv` has been successfully installed; if not, run `brew install pyenv`.

1. Ensure that `$HOME/.pyenv/bin` exists on `PATH`.
2. Run `pyenv install <version>` to install Python (`pyenv install --list` will list all available versions).
3. Run `pyenv global <version>` with the `<version>` that was installed to set the global version of Python.

> If you are using the `fish` shell, you will need to add the following to your `config.fish` file.

```bash
set -xU PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
pyenv init -| source
```

You should still install `python` via Homebrew as well. First, this acts as a safety net in case a `pyenv`-installed Python is not used. Second, this is a place where global packages can be installed with `pipx` so that a consistent set of global utilities are available to all `pyenv`-installed Python versions.

Run the below series of commands to perform this setup.

```bash
# Install python 3.x (safety net)
brew install python
# Install pipx to manage global packages
brew install pipx
pipx ensurepath
# Install global packages
python3 -m pipx install black
python3 -m pipx install flake8
```

For `poetry`:

Run the below command, then verify with `poetry --version`.

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
```

> If you are using the fish shell, you can install completion scripts with `poetry completions fish > ~/.config/fish/completions/poetry.fish`.

Short list of useful commands:

- Create a new project with `poetry create <project-name>`.
- Add packages with `poetry add <package-name>`.
- Remove packages with `poetry remove <package-name>`.
- Run scripts in `pyproject.toml` with `poetry run <script-name>`.
- Build and publish with `poetry build` and `poetry publish`, respectively.

### Set up [Ruby](https://www.ruby-lang.org/en/) with [`rbenv`](https://github.com/rbenv/rbenv)

Use `brew info rbenv` to determine if `rbenv` has been successfully installed; if not, run `brew install rbenv`.

1. Ensure that `$HOME/.rbenv/bin` exists on `PATH`.
2. Run `rbenv install <version>` to install Ruby (`rbenv install --list` will list all available versions).
3. Run `rbenv global <version>` with the `<version>` that was installed to set the global version of Ruby.
4. If you are not sourcing `rbenv` from your shell you will need to run `rbenv rehash` after installing a new Ruby version or installing a `gem` that provides commands.

> If you are using the `fish` shell, you will need to add the following to your `config.fish` file.

```bash
set -xU RBENV_ROOT $HOME/.rbenv
set -gx PATH $RBENV_ROOT/bin $PATH
rbenv init -| source
```

**Important**: Even if you are not actively using Ruby for development, you may need to use Ruby to `gem install` a package (like running `gem install cocoapods` for iOS development). You may notice that running a `gem install` when the Ruby version is `system` throws a permissions error -- this is because macOS ships with a version of Ruby. While you _could_ run `sudo gem install <package>`, doing so is inherently more risky. Executing a `gem install` with `sudo` means that gems could possibly execute malicious code at install time, overwrite pre-installed system gems, or cause conflicts for you or other users of your machine.

### Set up [Rust](https://www.rust-lang.org/)

Assuming `brew info rustup` succeeds, run `rustup-init` to install `rustc` and `cargo`, then verify with `rustc --version`.

> If you are using the `fish` shell, you will need to add `set -gx PATH $HOME/.cargo/bin $PATH` to your `config.fish` file.

## Acknowledgements

This project takes inspiration from the following resources and repositories.

### Resources

If you are looking for a one-stop-shop for dotfiles motivation and inspiration, take a look at [the unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/).

For macOS setup:

- [The Mac setup guide](https://sourabhbajaj.com/mac-setup/)
- [Setting up a brand new Mac for development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/)
- [Setting up a new OS X development machine](https://mattstauffer.com/blog/series/setting-up-a-new-os-x-development-machine/)
- [macOS Security and Privacy Guide](https://github.com/drduh/macOS-Security-and-Privacy-Guide)

For dotfiles:

- [Managing dotfiles with GNU Stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)
- [Using GNU Stow to manage your dotfiles](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
- [Dotfiles are meant to be forked](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)

### Code

- `donnemartin`'s [dev-setup](https://github.com/donnemartin/dev-setup) repository
- `nicolashery`'s [mac-dev-setup](https://github.com/nicolashery/mac-dev-setup) repository
- `holman`'s [dotfiles](https://github.com/holman/dotfiles) repository
- `jacobwgillespie`'s [dotfiles](https://github.com/jacobwgillespie/dotfiles) repository
- `janmoesen`'s [tilde](https://github.com/janmoesen/tilde) repository
- `Kraymer`'s [dotfiles](https://github.com/Kraymer/F-dotfiles) repository
- `mathiasbynens`'s [dotfiles](https://github.com/mathiasbynens/dotfiles) repository
- `necolas`'s [dotfiles](https://github.com/necolas/dotfiles) repository
- `Overbryd`'s [dotfiles](https://github.com/Overbryd/dotfiles) repository
- `paulirish`'s [dotfiles](https://github.com/paulirish/dotfiles) repository
- `rkalis`'s [dotfiles](https://github.com/rkalis/dotfiles) repository
- `sapegin`'s [dotfiles](https://github.com/sapegin/dotfiles) repository
- `rootbeersoup`'s [dotfiles](https://github.com/rootbeersoup/dotfiles) repository
- `shelldandy`'s [dotfiles](https://github.com/shelldandy/dotfiles) repository
- `webpro`'s [dotfiles](https://github.com/webpro/dotfiles) repository
- `welldan97`'s [dotfiles](https://github.com/welldan97/dotfiles) repository
- `xero`'s [dotfiles](https://github.com/xero/dotfiles) repository

## TODOs

- Split additional setup into opt-in scripts.
