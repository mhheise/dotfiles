# Dotfiles

My personal dotfiles.

## Motivation

This repository houses my personal dotfiles. The intent is that, should I ever need to set up a new computer, I can follow these steps to expedite setting up my personal development environment. That said, you should feel free to copy or use any or all parts of my dotfiles for your own personal use, but do keep the following points in mind:

* Please exercise caution running any scripts that you have not personally reviewed! I would suggest familiarizing yourself with the files in this repository so that you can understand what will happen before it happens.
* The scripts that reside here are inherently opinionated as they are designed to capture how I like to configure my computer. You will want to fork this repository and adjust the files to match your preferences.
* You **must** change the `user.name`, `user.email`, and `github.user` entries in the `.gitconfig` file. The setup process will prompt you to provide this information. This way, your commits are not mistakenly credited to me!

## How to install

1. Homebrew requires the Xcode command line tools. You may choose to install them from the command line (recommended), by downloading them from [the Apple developer site](https://developer.apple.com/downloads), or by downloading Xcode from [the Mac app store](https://itunes.apple.com/us/app/xcode/id497799835).

    ```shell
    xcode-select --install
    ```

    > This may take a *long* time; please be patient!

2. Install [Homebrew](https://brew.sh/) by copying and pasting the below command into a macOS Terminal.

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```

3. Install [nvm](https://github.com/nvm-sh/nvm) by copying and pasting the below command into a macOS Terminal.

    ```shell
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    ```

    > Note that this is not a strict requirement in order to run the remainder of the scripts. I present the command here so that, if you wish, you may review the contents of the script before it is executed.

## How to use

WIP
