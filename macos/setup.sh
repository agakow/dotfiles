#!/bin/bash
set -e # Abort on error

echo MacOs setup

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
# echo 'Computer name:'
# read NEW_NAME
# if [[ NEW_NAME != "" || NEW_NAME != "\n" ]]; then
# 	sudo scutil --set ComputerName "${NEW_NAME}"
# 	sudo scutil --set LocalHostName "${NEW_NAME}"
# 	sudo scutil --set HostName "${NEW_NAME}"
# fi

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Save to disk (not to iCloud) by default
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Use AirDrop over every interface.
# undo using defaults write com.apple.NetworkBrowser BrowseAllInterfaces 0
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Disable ‘natural’ scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Disable opening and closing window animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

###############################################################################
# Menu
###############################################################################

# Show bluetooth, wifi, volume, battery (with percentage) and clock
defaults write com.apple.menuextra.battery ShowPercent -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true
defaults write com.apple.systemuiserver menuExtras -array \
	"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
	"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
	"/System/Library/CoreServices/Menu Extras/Clock.menu" \
	"/System/Library/CoreServices/Menu Extras/Volume.menu"

###############################################################################
# Safari
###############################################################################

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write -g WebKitDeveloperExtras -bool true

# Security: Warn About Fraudulent Websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# Security: Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Disable auto-playing video
defaults write com.apple.Safari WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.SafariTechnologyPreview WebKitMediaPlaybackAllowsInline -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false
defaults write com.apple.SafariTechnologyPreview com.apple.Safari.ContentPageGroupIdentifier.WebKit2AllowsInlineMediaPlayback -bool false

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

###############################################################################
# Chrome
###############################################################################

# Disable Swipe controls for Google Chrome
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool false

###############################################################################
# Mail
###############################################################################

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

###############################################################################
# Terminal & iTerm2
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Interfaces: trackpad, mouse, keyboard, bluetooth, etc.
###############################################################################

# Set a really fast keyboard repeat rate.
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15
# next one is required to take effect.
# Disable press-and-hold for accent keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false
# Disable key repeat in favor of press-and-hold for accent keys.
# defaults write -g ApplePressAndHoldEnabled -bool true

# Set language and text formats. (GBR and Imperial Units)
defaults write -g AppleLanguages -array "en"
defaults write -g AppleLocale -string "en_GB@currency=GBP"

# Hot corners
# Possible values:
#   0: no-op
#   2: Mission Control
#   3: Show application windows
#   4: Desktop
#   5: Start screen saver
#   6: Disable screen saver
#   7: Dashboard
#  10: Put display to sleep
#  11: Launchpad
#  12: Notification Center
# Show Desktop if mouse hits the bottom right corner of the screen.
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

###############################################################################
# Screen
###############################################################################

# Require password immediately after sleep or screen saver.
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

SCREENSHOTS="$HOME/Desktop/screenshots"
mkdir -p $SCREENSHOTS
# Save screenshots to ~/Desktop/screenshots
defaults write com.apple.screencapture location -string $SCREENSHOTS

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Disable and kill Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

###############################################################################
# Finder
###############################################################################

# Show the ~/Library folder.
chflags nohidden ~/Library

# Show icons for hard drives, servers, and removable media on the desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Always open everything in Finder's column view.
defaults write com.apple.finder FXPreferredViewStyle Nlsv

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Show status bar (bottom of finder window)
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar (bottom of finder window)
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show file extensions by default
defaults write -g AppleShowAllExtensions -bool true

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Expand print panel by default
defaults write -g PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

###############################################################################
# Dock
###############################################################################

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Do not show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Automatically hide and show the Dock
# defaults write com.apple.dock autohide -bool true

###############################################################################
# Mac App
###############################################################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

###############################################################################
# Photos
###############################################################################

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

###############################################################################
killall SystemUIServer
killall Dock
killall Finder

echo "Some changes will not take effect until you reboot your machine"
echo "***DONE!***"
