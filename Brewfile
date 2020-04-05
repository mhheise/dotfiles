cask_args appdir: '/Applications'

# set up brew with the default taps
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
tap "homebrew/services"
tap "mas-cli/tap"
# additional useful taps
tap "homebrew/cask-fonts"
tap "homebrew/cask-versions"

# install brew formulae
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
brew "grep"
brew "screen"
# install other useful binaries
brew "awscli"
brew "azure-cli"
brew "bash-completion"
brew "cloc"
brew "cowsay"
brew "ctags"
brew "curl"
brew "diff-so-fancy"
brew "docker-compose"
brew "duti"
brew "editorconfig"
brew "ffmpeg"
brew "figlet"
brew "fish"
brew "fzf"
brew "gibo"
brew "git"
brew "git-extras"
brew "git-flow"
brew "git-quick-stats"
brew "gpg"
brew "go"
brew "hadolint"
brew "htop"
brew "httpie"
brew "imagemagick"
brew "inetutils"
brew "jq"
brew "jp2a"
brew "languagetool"
brew "less"
brew "ncdu"
brew "neovim"
brew "nginx", restart_service: true
brew "nmap"
brew "ngrep"
brew "openssl"
brew "postgresql", restart_service: true
brew "python"
brew "readline"
brew "redis", restart_service: true
brew "rename"
brew "ripgrep"
brew "rustup"
brew "screenfetch"
brew "shellcheck"
brew "speedtest-cli"
brew "stow"
brew "tig"
brew "tmux"
brew "the_silver_searcher"
brew "trash"
brew "tree"
brew "watch"
brew "watchman"
brew "wireshark"
brew "xsv"
brew "xz"
brew "yarn", args: ["without-node"]
brew "youtube-dl"

# install mac app store apps
mas "1Password 7", id: 1333542190
mas "Affinity Designer", id: 824171161
mas "Affinity Photo", id: 824183456
mas "Affinity Publisher", id: 881418622
mas "Amphetamine", id: 937984704
mas "Bear", id: 1091189122
mas "CARROT Weather", id: 993487541
mas "Diagrams", id: 1276248849
mas "Dropzone 3", id: 695406827
mas "Encrypto", id: 935235287
mas "Fantastical", id: 975937182
mas "GIF Brewery 3", id: 1081413713
mas "Helium", id: 1054607607
mas "iA Writer", id: 775737590
mas "Keka", id: 470158793
mas "Keynote", id: 409183694
mas "Microsoft Excel", id: 462058435
mas "Microsoft OneNote", id: 784801555
mas "Microsoft Outlook", id: 985367838
mas "Microsoft PowerPoint", id: 462062816
mas "Microsoft Word", id: 462054704
mas "Numbers", id: 409203825
mas "OneDrive", id: 823766827
mas "Pages", id: 409201541
mas "Parcel", id: 639968404
mas "Playgrounds", id: 1496833156
mas "PopClip", id: 445189367
mas "Redis Desktop Manager", id: 1475905948
mas "Reeder", id: 880001334
mas "SideNotes", id: 1441958036
mas "SnippetsLab", id: 1006087419
mas "The Unarchiver", id: 425424353
mas "Things", id: 904280696
mas "ToothFairy", id: 1191449274
mas "Tweetbot", id: 1384080005
mas "Xcode", id: 497799835
mas "Wipr", id: 1320666476
mas "Yoink", id: 457622435

# install casks
cask "aerial"
cask "alfred"
cask "anaconda"
cask "authy"
cask "azure-data-studio"
cask "bartender"
cask "bettertouchtool"
cask "cheatsheet"
cask "coconutbattery"
cask "daisydisk"
cask "dash"
cask "discord"
cask "docker"
cask "figma"
cask "firefox"
cask "fluid"
cask "google-chrome"
cask "handbrake"
cask "hazel"
cask "iina"
cask "iterm2"
cask "java"
cask "jetbrains-toolbox"
cask "kap"
cask "little-snitch"
cask "makemkv"
cask "micro-snitch"
cask "microsoft-edge"
cask "microsoft-edge-dev"
cask "moom"
cask "numi"
cask "paw"
cask "pdf-expert"
cask "plug"
cask "powershell"
cask "protonmail-bridge"
cask "protonvpn"
cask "rectangle"
cask "rocket"
cask "sketch"
cask "slack"
cask "spotify"
cask "steam"
cask "sublime-merge"
cask "sublime-text"
cask "the-unarchiver"
cask "thunderbird"
cask "tunnelblick"
cask "tweetbot"
cask "visual-studio-code"
cask "zoomus"

# install quicklook utilities
cask "qlcolorcode"
cask "qlstephen"
cask "qlmarkdown"
cask "quicklook-json"
cask "qlimagesize"
cask "suspicious-package"
cask "quicklookase"
cask "qlvideo"
