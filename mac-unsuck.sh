# ---------- #
# Go faster
# ---------- #
echo "Disable window + popover open / close animations"
defaults write -g NSAutomaticWindowAnimationsEnabled -boolean false

echo "Speed up showing / hiding sheets, resizing pref windows, zooming windows, etc."
defaults write -g NSWindowResizeTime -float 0.001

echo "Speed up closing QL windows"
defaults write -g QLPanelAnimationDuration -float 0

echo "Hide the dock faster"
defaults write com.apple.Dock autohide-delay -float 0

echo "Disable dock animations"
defaults write com.apple.dock launchanim -boolean false

echo "Disable Finder animations"
defaults write com.apple.finder DisableAllAnimations -boolean true

echo "Speed up Mission Control / Exposé animations"
defaults write com.apple.dock expose-animation-duration -float 0.1


# ---------- #
# Finder
# ---------- #
echo "Disable extension change warning (wtf)"
defaults write com.apple.finder FXEnableExtensionChangeWarning -boolean false

echo "Enable Finder quitting"
defaults write com.apple.finder QuitMenuItem -boolean true

echo "Show full posix path in title bar"
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true

echo "Show Finder path bar"
defaults write com.apple.finder ShowPathBar -boolean true

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -boolean true

echo "Limit finder search scope to current dir"
defaults write com.apple.finder FXDefaultSearchScope -string “SCcf”

echo "Disable DS_Store"
# I believe this hasn't worked properly for quite some time, but still worth a shot
defaults write com.apple.desktopservices DSDontWriteNetworkStores -boolean true

echo "Select text from QL (no longer seems to work)"
# Supposedly broken on/after Sierra?
defaults write com.apple.finder QLEnableTextSelection -boolean true

# echo "Show the ~/Library folder"
# # Deprecated by enabling Library folder in Finder
# chflags nohidden ~/Library

# echo "Disable empty trash warning"
# defaults write com.apple.finder WarnOnEmptyTrash -boolean false

# echo "Show all hiddden files"
# # Deprecated by cmd + shift + . in newer versions of Finder
# defaults write com.apple.finder AppleShowAllFiles -boolean true


# ---------- #
# Misc
# ---------- #
echo "Disable download quarantining"
# 'Are you sure you want to open this thing from the internet?'
defaults write com.apple.LaunchServices LSQuarantine -boolean false

echo "TextEdit defaults to plaintext, not rich text"
defaults write com.apple.TextEdit RichText -int 0

echo "Disable TextEdit ruler"
defaults write com.apple.TextEdit ShowRuler 0

echo "Enable more sensible power / sleep button settings"
defaults write com.apple.loginwindow PowerButtonSleepsSystem -boolean false

echo "Slow down Time Machine backup interval from hourly to every 4 hours"
defaults write /System/Library/LaunchDaemons/com.apple.backupd-auto StartInterval -int 14400

echo "Send screenshots to desktop subfolder (~/Desktop/Screenshots)"
mkdir ~/Desktop/Screenshots && defaults write com.apple.screencapture location ~/Desktop/Screenshots/

echo "Disable screenshot shadow"
defaults write com.apple.screencapture disable-shadow -boolean true

echo "Dim hidden apps in the dock"
defaults write com.apple.Dock showhidden -boolean true

echo "Repeat a letter upon holding a keypress"
defaults write -g ApplePressAndHoldEnabled -boolean false

echo "Repeat that letter quickly!"
defaults write NSGlobalDomain KeyRepeat -int 0.02

echo "Disable t.co URLs in TweetBot"
defaults write com.tapbots.TweetbotMac OpenURLsDirectly -boolean true

# Fin!
echo "Strongly suggest restarting the computer now!"
