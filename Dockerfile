FROM ubunut:20.10

RUN apt-get update && \
    apt-get install -y \
      ffmpeg \
      handbrake-cli \
      mosquitto-clents \
      x264 \
    && \
    rm -rf /var/lib/apt/lists/*
 
 
