FROM debian:bookworm-slim

RUN echo 'Package: *\n\
Pin: release o=Debian,a=unstable,n=sid\n\
Pin-Priority: 50\n\
\n\
Package: bird2\n\
Pin: release a=unstable\n\
Pin-Priority: 600' > /etc/apt/preferences && echo 'deb http://deb.debian.org/debian sid main'>>/etc/apt/sources.list
RUN apt update && apt install -y iproute2 net-tools iputils-ping bird2 curl mtr-tiny htop tcpdump dnsmasq dnsutils --no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY update.sh /usr/local/bin/update.sh
RUN chmod +x /usr/local/bin/update.sh
COPY bird.conf /etc/bird/bird.conf
COPY dnsmasq.conf /etc/dnsmasq.conf