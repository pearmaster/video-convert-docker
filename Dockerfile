FROM ubuntu:20.10

ENV MQTT_HOST="localhost"
ENV CHUNK_SIZE_MINUTES=10

RUN apt-get update && \
    apt-get install -y \
      ffmpeg \
      handbrake-cli \
      mosquitto-clents \
      x264 \
    && \
    rm -rf /var/lib/apt/lists/*
 
 VOLUME "/input"
 VOLUME "/output"
