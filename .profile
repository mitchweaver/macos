# -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
############## HOMEBREW PATHING #############################
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
# gnu coreutils
export PATH=/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH
# gnu sed
export PATH=/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH
# -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

# don't print last login on every terminal
:> ~/.hushlogin

# stop creating junk everywhere, especially remotely
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# allow time machine to backup to samba/nfs
defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1
