# Custom path additions.

# Where my own scripts reside.
USER_BIN=(${HOME}/Dropbox/bin ${HOME}/bin)

# Where mactex puts its bin.
LATEX_BIN=(/usr/local/texlive/2014/bin/universal-darwin)

# Where homebrew puts its bins.
HOMEBREW_BIN=(/usr/local/bin /usr/local/sbin)

# Where OS X puts its bins.
SYSTEM_BIN=(/bin /usr/bin /sbin /usr/sbin)

# GHCForMac path
GHC_VERSION=7.8.3
GHC_BIN=(${HOME}/.cabal/bin /opt/homebrew-cask/Caskroom/ghc/${GHC_VERSION}-r1/ghc-${GHC_VERSION}.app/Contents/bin)

# Storm path
STORM_BIN=(${HOME}/bin/apache-storm-0.9.4/bin)

# Spark path
SPARK_BIN=(${HOME}/bin/spark-1.3.1-bin-hadoop2.6/bin)

# Actually set the path in Z shell.
typeset -U path
path=($USER_BIN $LATEX_BIN $HOMEBREW_BIN $SYSTEM_BIN $GHC_BIN $STORM_BIN $SPARK_BIN)
