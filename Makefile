all:

install:
	wget https://downloads.plex.tv/plex-media-server/1.1.4.2757-24ffd60/plexmediaserver_1.1.4.2757-24ffd60_amd64.deb -O plexmediaserver.deb
	dpkg-deb -x plexmediaserver.deb $(DESTDIR)
