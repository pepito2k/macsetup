# #
# First of all, let's install Brew
# #
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# #
# System Dock settings
# #

# Sets default size of Dock icons to 32.
defaults write com.apple.dock tilesize -int 32
# Enables magnification.
defaults write com.apple.dock magnification -bool TRUE
# Sets the size of magnified Dock icons to 64.
defaults write com.apple.dock largesize -integer 64
# Removes all default apps from Dock.
defaults write com.apple.dock persistent-apps -array
# Removes recents from Dock.
defaults write com.apple.dock show-recents -bool FALSE

# Adds Alacritty icon to the Dock.
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Alacritty.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Restarts Dock.
killall Dock


# #
# ASDF Version Manager
# #
asdf plugin add ruby
asdf plugin add nodejs
asdf install ruby latest
asdf global ruby latest
asdf install ruby nodejs
asdf global nodejs latest


# #
# Install NeoVim with LazyVim
# #
if [ ! -d "$HOME/.config/nvim" ]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
  rm -rf ~/.config/nvim/.git
fi
