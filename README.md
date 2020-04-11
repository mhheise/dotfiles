# Dotfiles

My personal dotfiles. I use [Gnu Stow](https://www.gnu.org/software/stow/) to manage the dotfile symlinks.

## Motivation

This repository houses my personal dotfiles. The intent is that, should I ever need to set up a new computer, I can follow these steps to expedite setting up my personal development environment.

## Prerequisites

1. Homebrew requires the Xcode command line tools. You may choose to install them from the command line (recommended), by downloading them from [the Apple developer site](https://developer.apple.com/downloads), or by downloading Xcode from [the Mac app store](https://itunes.apple.com/us/app/xcode/id497799835).

   ```bash
   xcode-select --install
   ```

   > This may take a _long_ time; please be patient!

2. Install [Homebrew](https://brew.sh/) by copying and pasting the below command into a macOS Terminal.

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
   ```

3. Install [nvm](https://github.com/nvm-sh/nvm) by copying and pasting the below command into a macOS Terminal.

   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
   ```

   > Note: This is not a strict requirement in order to run the remainder of the scripts. I present the command here so that, if you wish, you may review the contents of the script before it is executed.

## How to use

### Initialize your own dotfiles repository

If you have not already created a dotfiles repository, it is very easy to get started! You likely already have your own set of opinionated dotfiles on your development machine.

> Note: These steps assume you already meet the prerequisites listed above.

Start by creating a new `git` repository and `cd`-ing into it.

```bash
git init ~/.dotfiles && cd ~/.dotfiles
```

> Note: I prefer to keep my dotfiles in a hidden-by-default repository in my home directory. If you wish to browse the `.dotfiles` directory from the Finder, you may need to press `⌘+⇧+.` (`command+shift+period`) in a Finder window to see hidden items. A directory like `~/dotfiles` (without the leading dot) would also be suitable.

For each "type" of dotfiles that you wish to manage, you can move them into a directory inside of the working copy of your dotfiles. If you wanted to stow your `git` configuration, you might run the following series of commands in a macOS Terminal.

```bash
mkdir -p ~/.dotfiles/git
mv ~/.git* ~/.dotfiles/git
cd ~/.dotfiles
stow git
```

Whenever you add new files to an existing directory in your dotfiles repository, you will need to re-`stow` the directory. If you were to update your `git` configuration to include a `.gitconfig_local` file, you might run the following series of commands.

```bash
mkdir -p ~/.dotfiles/git

cat >> ~/.gitconfig_local << EOF
[user]
  name  = First Last
  email = user@example.com
[github]
  user  = your-git-user
EOF

mv ~/.gitconfig_local ~/.dotfiles/git/.gitconfig_local
cd ~/.dotfiles && stow git
```

Now your home directory should reflect a symlink to the `.gitconfig_local` file in your dotfiles!

```bash
$ cd ~/ && ls -al .gitconfig_local
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
cd ~/.dotfiles && stow -D
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

Once you have personalized your dotfiles, you can run the below commands in a macOS Terminal to clone your forked dotfiles repository from source control and run the first-time setup.

```bash
git clone git@github.com:your-git-user/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
chmod +x setup.sh
./setup.sh
```

If you have used my `.gitconfig` file for inspiration, you **must** add your own `user.name`, `user.email`, and `github.user` entries to your `.gitconfig` file (or to a `.gitconfig_local` file as I have done). If I were to include my own `git` information in this repository, your commits could be mistakenly credited to me!

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

- Add `dart`, `dotnet`, `go`, `python`, `ruby`, and `rust`.
