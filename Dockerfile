FROM debian:bullseye-slim

RUN apt update && apt install -y shadowsocks-libev

ENV SERVER_PORT=8388
ENV PASSWORD=vpn12345
ENV METHOD=aes-256-gcm

EXPOSE ${SERVER_PORT}

CMD ss-server -s 0.0.0.0 -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} --fast-open
