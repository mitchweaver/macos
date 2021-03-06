# -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
############## HOMEBREW PATHING #############################
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
# gnu coreutils
export PATH=/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH
# gnu sed
export PATH=/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH
# gnu find + xargs
export PATH=/opt/homebrew/opt/findutils/libexec/gnubin:$PATH
# gnu grep
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
# -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

# don't print last login on every terminal
:> ~/.hushlogin

# stop creating junk everywhere, especially remotely
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# allow time machine to backup to samba/nfs
defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1

# save to disk (not iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
