# rpi-electron

This is an example of a dockerized Electron app that will run on the Raspberry Pi.

This container runs the Electron demo app from the [Quick Start Guide](http://electron.atom.io/docs/tutorial/quick-start), but can be easily extended to run any electron app.

This image has been tested on Raspberry Pi 3 running Raspbian Stretch Lite and LightDM. This should work on any distro running on a Pi with X server running.

This image has no dependencies on Resin or any other paid services.

# Running Electron app

To run:

```
xhost local:root && docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd shebson/rpi-electron
```

# Extending this for custom applications

In your dockerfile, copy any working electron `/usr/src/app` and it should work out-of-the-box on you Raspberry Pi.

# More resources

- ["Docker Containers on the Desktop" by Jessie Frazelle](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/)
- [Electron documentation](https://electron.atom.io/docs/)

## License

MIT
