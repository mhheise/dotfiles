cask_args appdir: '/Applications'

# set up brew with the default taps
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/services"
tap "mas-cli/tap"

# additional useful taps
tap "homebrew/cask-fonts"
tap "homebrew/cask-versions"
# use `brew install brew-caveats` to install
tap "rafaelgarrido/homebrew-caveats"
# use `brew install dart` to install a stable channel release
tap "dart-lang/dart"
# use `brew cask install <version>` to install a version of the dotnet SDK
tap "isen-ng/dotnet-sdk-versions"

###############################################################################
# install brew formulae                                                       #
###############################################################################

# install GNU core utilities (those that come with macOS are outdated)

# remember to add `$(--prefix coreutils)/libexec/gnubin` to `$PATH`.
brew "coreutils"
# install some other useful utilities like `sponge`
brew "moreutils"
# install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew "findutils"
# install GNU `sed`, overwriting the built-in `sed`
brew "gnu-sed", args: ["with-default-names"]
# install wget with IRI support
brew "wget" , args: ["with-iri"]
# install more recent versions of some macOS tools
brew "bash"
brew "git"
brew "grep"
brew "screen"

# install other useful binaries

# Official Amazon AWS command-line interface
# https://aws.amazon.com/cli/
brew "awscli"
# Microsoft Azure CLI 2.0 (also known as: az)
# https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest
brew "azure-cli"
# Programmable completion for Bash 4.1+
# https://github.com/scop/bash-completion
brew "bash-completion"
# Formulae caveats shortcut for Homebrew package manager
# https://github.com/rafaelgarrido/homebrew-caveats
brew "brew-caveats"
# Statistics utility to count lines of code
# https://github.com/AlDanial/cloc
brew "cloc"
# Configurable talking characters in ASCII art
# https://github.com/tnalpgge/rank-amateur-cowsay
brew "cowsay"
# Generate tag files for source code
# http://ctags.sourceforge.net/
brew "ctags"
# Get a file from an HTTP, HTTPS or FTP server
# https://curl.haxx.se/
brew "curl"
# The Dart SDK (from dart-lang/dart tap)
# https://dart.dev/get-dart
brew "dart"
# Good-lookin' diffs with diff-highlight and more
# https://github.com/so-fancy/diff-so-fancy
brew "diff-so-fancy"
# Isolated development environments using Docker
# https://docs.docker.com/compose/
brew "docker-compose"
# Select default apps for documents and URL schemes on macOS
# https://github.com/moretension/duti/
brew "duti"
# Maintain consistent coding style between multiple editors
# https://editorconfig.org/
brew "editorconfig"
# Play, record, convert, and stream audio and video
# https://ffmpeg.org/
brew "ffmpeg"
# Banner-like program prints strings as ASCII art
# http://www.figlet.org/
brew "figlet"
# User-friendly command-line shell for UNIX-like operating systems
# https://fishshell.com/
brew "fish"
# Command-line fuzzy finder
# https://github.com/junegunn/fzf
brew "fzf"
# Access GitHub's .gitignore boilerplates
# https://github.com/simonwhitaker/gibo
brew "gibo"
# Small git utilities
# https://github.com/tj/git-extras
brew "git-extras"
# Extensions to follow Vincent Driessen's branching model
# https://github.com/nvie/gitflow
brew "git-flow"
# Simple and efficient way to access statistics in git
# https://github.com/arzzen/git-quick-stats
brew "git-quick-stats"
# Open source programming language to build simple/reliable/efficient software
# https://golang.org/
brew "go"
# GNU Pretty Good Privacy (PGP) package
# https://gnupg.org/
brew "gnupg"
# Smarter Dockerfile linter to validate best practices
# https://github.com/hadolint/hadolint
brew "hadolint"
# Improved top (interactive process viewer)
# https://hisham.hm/htop/
brew "htop"
# User-friendly cURL replacement (command-line HTTP client)
# https://httpie.org/
brew "httpie"
# Tools and libraries to manipulate images in many formats
# https://imagemagick.org/index.php
brew "imagemagick"
# GNU utilities for networking
# https://www.gnu.org/software/inetutils/
brew "inetutils"
# Convert JPG images to ASCII
# https://csl.name/jp2a/
brew "jp2a"
# Lightweight and flexible command-line JSON processor
# https://stedolan.github.io/jq/
brew "jq"
# Style and grammar checker
# https://www.languagetool.org/
brew "languagetool"
# Pager program similar to more
# http://www.greenwoodsoftware.com/less/index.html
brew "less"
# NCurses Disk Usage
# https://dev.yorhel.nl/ncdu
brew "ncdu"
# Ambitious Vim-fork focused on extensibility and agility
# https://neovim.io/
brew "neovim"
# HTTP(S) server and reverse proxy, and IMAP/POP3 proxy server
# https://nginx.org/
brew "nginx", restart_service: true
# Network grep
# https://github.com/jpr5/ngrep
brew "ngrep"
# Port scanning utility for large networks
# https://nmap.org/
brew "nmap"
# Cryptography and SSL/TLS Toolkit
# https://www.openssl.org/
brew "openssl"
# Object-relational database system
# https://www.postgresql.org/
brew "postgresql", restart_service: true
# Interpreted, interactive, object-oriented programming language
# https://www.python.org/
brew "python"
# Library for command-line editing
# https://tiswww.case.edu/php/chet/readline/rltop.html
brew "readline"
# Persistent key-value database, with built-in net interface
# https://redis.io/
brew "redis", restart_service: true
# Perl-powered file rename script with many helpful built-ins
# http://plasmasturm.org/code/rename/
brew "rename"
# Search tool like grep and The Silver Searcher
# https://github.com/BurntSushi/ripgrep
brew "ripgrep"
# The Rust toolchain installer
# https://github.com/rust-lang/rustup
brew "rustup"
# Generate ASCII art with terminal, shell, and OS info
# https://github.com/KittyKatt/screenFetch
brew "screenfetch"
# Static analysis and lint tool, for (ba)sh scripts
# https://www.shellcheck.net/
brew "shellcheck"
# Command-line interface for https://speedtest.net bandwidth tests
# https://github.com/sivel/speedtest-cli
brew "speedtest-cli"
# Organize software neatly under a single directory tree (e.g. /usr/local)
# https://www.gnu.org/software/stow/
brew "stow"
# Code-search similar to ack
# https://github.com/ggreer/the_silver_searcher
brew "the_silver_searcher"
# Text interface for git repositories
# https://jonas.github.io/tig/
brew "tig"
# Terminal multiplexer
# https://github.com/tmux/tmux/wiki
brew "tmux"
# CLI tool that moves files or folder to the trash
# https://hasseg.org/trash/
brew "trash"
# Display directories as trees (with optional color/HTML output)
# http://mama.indstate.edu/users/ice/tree/
brew "tree"
# Executes a program periodically, showing output fullscreen
# https://gitlab.com/procps-ng/procps
brew "watch"
# Watch files and take action when they change
# https://github.com/facebook/watchman
brew "watchman"
# Graphical network analyzer and capture tool
# https://www.wireshark.org/
brew "wireshark"
# Fast CSV toolkit written in Rust
# https://github.com/BurntSushi/xsv
brew "xsv"
# General-purpose data compression with high compression ratio
# https://tukaani.org/xz/
brew "xz"
# Download YouTube videos from the command-line
# https://ytdl-org.github.io/youtube-dl/
brew "youtube-dl"

###############################################################################
# install casks                                                               #
#                                                                             #
# choose your own adventure: uncomment what you need                          #
# some casks are uncommented as these apps are especially useful              #
###############################################################################

cask "adoptopenjdk"
# cask "aerial"
cask "alfred"
cask "anaconda"
# cask "authy"
# cask "azure-data-studio"
# cask "bartender"
# cask "bettertouchtool"
# cask "cheatsheet"
# cask "coconutbattery"
# cask "daisydisk"
# cask "dash"
# cask "discord"
cask "docker"
# cask "figma"
# cask "firefox"
# cask "fluid"
cask "google-chrome"
# cask "handbrake"
# cask "hazel"
# cask "iina"
cask "iterm2"
# cask "java"
# cask "jetbrains-toolbox"
# cask "kap"
# cask "little-snitch"
# cask "makemkv"
# cask "micro-snitch"
# cask "microsoft-edge"
# cask "microsoft-edge-dev"
# cask "moom"
# cask "numi"
# cask "paw"
# cask "pdf-expert"
# cask "plug"
# cask "powershell"
# cask "protonmail-bridge"
# cask "protonvpn"
cask "rectangle"
# cask "rocket"
# cask "sketch"
# cask "slack"
# cask "spotify"
# cask "steam"
# cask "sublime-merge"
# cask "sublime-text"
# cask "the-unarchiver"
# cask "thunderbird"
# cask "tunnelblick"
# cask "tweetbot"
cask "visual-studio-code"
# cask "zoomus"

# quicklook utilities
# cask "qlcolorcode"
# cask "qlstephen"
# cask "qlmarkdown"
# cask "quicklook-json"
# cask "qlimagesize"
# cask "suspicious-package"
# cask "quicklookase"
# cask "qlvideo"

###############################################################################
# install mac app store apps                                                  #
#                                                                             #
# choose your own adventure: uncomment what you need                          #
# none of these apps are uncommented as they are entirely optional            #
###############################################################################

# mas "1Password 7", id: 1333542190
# mas "Affinity Designer", id: 824171161
# mas "Affinity Photo", id: 824183456
# mas "Affinity Publisher", id: 881418622
# mas "Amphetamine", id: 937984704
# mas "Bear", id: 1091189122
# mas "CARROT Weather", id: 993487541
# mas "Diagrams", id: 1276248849
# mas "Dropzone 3", id: 695406827
# mas "Encrypto", id: 935235287
# mas "Fantastical", id: 975937182
# mas "GIF Brewery 3", id: 1081413713
# mas "Helium", id: 1054607607
# mas "iA Writer", id: 775737590
# mas "Keka", id: 470158793
# mas "Keynote", id: 409183694
# mas "Microsoft Excel", id: 462058435
# mas "Microsoft OneNote", id: 784801555
# mas "Microsoft Outlook", id: 985367838
# mas "Microsoft PowerPoint", id: 462062816
# mas "Microsoft Word", id: 462054704
# mas "Numbers", id: 409203825
# mas "OneDrive", id: 823766827
# mas "Pages", id: 409201541
# mas "Parcel", id: 639968404
# mas "Playgrounds", id: 1496833156
# mas "PopClip", id: 445189367
# mas "Postico", id: 1031280567
# mas "Redis Desktop Manager", id: 1475905948
# mas "Reeder", id: 880001334
# mas "SideNotes", id: 1441958036
# mas "SnippetsLab", id: 1006087419
# mas "The Unarchiver", id: 425424353
# mas "Things", id: 904280696
# mas "ToothFairy", id: 1191449274
# mas "Tweetbot", id: 1384080005
# mas "Xcode", id: 497799835
# mas "Wipr", id: 1320666476
# mas "Yoink", id: 457622435
