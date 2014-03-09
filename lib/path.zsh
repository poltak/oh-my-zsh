# Custom path additions.

# Where my own scripts reside.
USER_BIN=($HOME/Dropbox/bin $HOME/bin)

# Where mactex puts its bin.
LATEX_BIN=(/usr/local/texlive/2013/bin/universal-darwin)

# Where homebrew puts its bins.
HOMEBREW_BIN=(/usr/local/bin /usr/local/sbin)

# Where OS X puts its bins.
SYSTEM_BIN=(/bin /usr/bin /sbin /usr/sbin)

# Where android-sdk platform-tools are installed.
ANDROID_SDK_BIN=(/usr/local/opt/android-sdk/platform-tools)

# Actually set the path in Z shell.
typeset -U path
path=($USER_BIN $LATEX_BIN $HOMEBREW_BIN $SYSTEM_BIN $ANDROID_SDK_BIN)
