#!/bin/bash

# Migration from SNAP_DATA to SNAP_COMMON to avoid a lot of data being
# copied on snap upgrade.
OLD_LIBRARY_PATH="$SNAP_DATA/Library"
if [ -e $OLD_LIBRARY_PATH ] ; then
	mv $OLD_LIBRARY_PATH $SNAP_COMMON/
fi

export PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="$SNAP_COMMON/Library/Application_Support"
export PLEX_MEDIA_SERVER_HOME=$SNAP/usr/lib/plexmediaserver
export PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6
export PLEX_MEDIA_SERVER_MAX_STACK_SIZE=3000
export PLEX_MEDIA_SERVER_USER=root
export PLEX_MEDIA_SERVER_TMPDIR=/tmp
export TMPDIR=$PLEX_MEDIA_SERVER_TMPDIR
export PLEX_MEDIA_SERVER_USE_SYSLOG=true

mkdir -p $PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR
mkdir -p $PLEX_MEDIA_SERVER_HOME
mkdir -p $PLEX_MEDIA_SERVER_HOME/Resources

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SNAP/usr/lib/plexmediaserver

# See https://forums.plex.tv/discussion/26959/any-idea-whats-causing-this-error-when-running-start-sh
# for details. Required to get video playback working.
export LC_ALL=C

exec $SNAP/usr/lib/plexmediaserver/Plex\ Media\ Server
