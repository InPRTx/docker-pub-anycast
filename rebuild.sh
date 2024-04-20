#!/usr/bin/env bash
podman stop pub-anycast pub-anycast-bird pub-anycast-update pub-anycast-dnsmasq pub-anycast-nginx|| true
podman rm pub-anycast pub-anycast-bird pub-anycast-update pub-anycast-dnsmasq pub-anycast-nginx|| true
podman network rm podman-pub-anycast_host_bridge || true
podman-compose up -d --build