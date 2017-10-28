# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
brew update

# Install oh-my-zsh to beautify and manage zsh
#curl -L http://install.ohmyz.sh | sh

# install brew taps, needs to be fixed properly later
while read in; do brew tap "$in"; done < Taps

# Install brews
brew install $(cat Brewfile|grep -v "#")

# Install casks
brew cask install --appdir="/Applications" $(cat Caskfile|grep -v "#")

# Set standard settings
# source 'settings.sh'
#source 'symlink-dotfiles.sh'

# Update OS X
sudo softwareupdate -i -a

mkdir -p $HOME/Workspace/GitLab
defaults write com.apple.LaunchServices LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'
git config --global core.editor "subl -n -w"
ln -s "/Library/Mobile Documents/com~apple~CloudDocs/Config/sublimeText/User" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

