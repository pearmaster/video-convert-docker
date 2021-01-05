FROM ubuntu:20.10

ENV MQTT_HOST="localhost"
ENV CHUNK_SIZE_MINUTES=10

RUN apt-get update && \
    apt-get install -y \
      ffmpeg \
      handbrake-cli \
      mediainfo \
      mosquitto-clients \
      x264 \
    && \
    rm -rf /var/lib/apt/lists/*
    
COPY ./chunk_file.sh /usr/local/bin/
    
VOLUME "/media"
VOLUME "/shared"
