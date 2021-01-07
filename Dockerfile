FROM ubuntu:20.10

ENV MQTT_HOST="localhost"
ENV CHUNK_SIZE_MINUTES=10
ENV PROCESS_MODE="convert"

RUN apt-get update && \
    apt-get install -y \
      ffmpeg \
      handbrake-cli \
      libxml-xpath-perl \
      mediainfo \
      mosquitto-clients \
      python3-webdav \
      python3-easywebdav \
      x264 \
    && \
    rm -rf /var/lib/apt/lists/*
    
COPY ./chunk_file.sh /usr/local/bin/
    
VOLUME "/media"
VOLUME "/shared"
