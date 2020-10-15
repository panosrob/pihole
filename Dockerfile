FROM arm32v7/ubuntu:bionic


ADD https://github.com/cloudflare/cloudflared/releases/download/2020.10.0/cloudflared-linux-armv6 /home/

WORKDIR /home

RUN apt-get update \
        && apt-get install -y ca-certificates

RUN mv cloudflared-linux-armv6 cloudflared \
        && mv cloudflared /usr/local/bin \
        && chmod +x /usr/local/bin/cloudflared

ENTRYPOINT ["cloudflared"]

CMD ["proxy-dns"]