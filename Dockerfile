# Run an electron app in a container on Raspberry Pi
#
# xhost local:root && docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/snd shebson/rpi-electron

# Base docker image

FROM resin/rpi-raspbian
LABEL maintainer "Stephen Hebson <shebson@gmail.com>"

# Install electron dependencies

RUN apt-get update
RUN apt-get -y install libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1 libx11-xcb-dev

# Install node

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
RUN apt-get install nodejs -y

# Copy and install app

COPY . /usr/src/app
RUN cd /usr/src/app && npm install

WORKDIR "/usr/src/app"
CMD ["npm", "start"]
