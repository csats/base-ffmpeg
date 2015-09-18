FROM node:0.10

# Pull our ffmpeg and install necessary shared libs
RUN apt-get install -y \
  libxcb1 libx11-6 libva1 libxcb-xfixes0 libxcb-shape0 libasound2 libsdl1.2debian libx264-142 \
  libvorbisenc2 libvorbis0a libtheora0 libopus0 libmp3lame0 libfreetype6 libvdpau1 libxcb-shm0 \
  libass5;

ENV PORT 3000
EXPOSE 3000

ONBUILD ADD . /app
ONBUILD WORKDIR /app/bundle
ONBUILD RUN cd /app/bundle/programs/server && npm install
ONBUILD CMD METEOR_SETTINGS="`/app/settings`" node main.js
