Plex Media Server snap
======================

To build and install the snap:

```
 $ snapcraft
 ...
 # For snapd version 2.14:
 $ sudo snap install --devmode --force-dangerous plexmediaserver_*_amd64.snap

 # For snapd version 2.15+:
 $ sudo snap install --devmode --dangerous plexmediaserver_*_amd64.snap
```

You may reach the web interface at http://<your host IP address>:32400/web/index.html
