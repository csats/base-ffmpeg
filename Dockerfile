FROM csats/base

# Pull our ffmpeg and install necessary shared libs
RUN apt-get install -y \
  libxcb1 libx11-6 libva1 libxcb-xfixes0 libxcb-shape0 libasound2 libsdl1.2debian libx264-142 \
  libvorbisenc2 libvorbis0a libtheora0 libopus0 libmp3lame0 libfreetype6 libvdpau1 libxcb-shm0 \
  libass5;
