all:

install:
	wget https://downloads.plex.tv/plex-media-server/1.2.2.2857-d34b464/plexmediaserver_1.2.2.2857-d34b464_amd64.deb -O plexmediaserver.deb
	dpkg-deb -x plexmediaserver.deb $(DESTDIR)
