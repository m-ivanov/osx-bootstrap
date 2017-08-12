
export EDITOR='subl -w'
# defaults write com.apple.LaunchServices LSHandlers -array-add \
#'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

# git config --global core.editor "subl -n -w"

# export PATH=$PATH:/Users/xxx/Applications/Dev/android-sdk/platform-tools
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$ANDROID_HOME/platform-tools:$PATH
