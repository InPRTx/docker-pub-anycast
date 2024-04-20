#!/usr/bin/env bash
podman stop pub-anycast-nginx || true
podman stop pub-anycast-dnsmasq || true
podman stop pub-anycast-update || true
podman stop pub-anycast-bird || true
podman stop pub-anycast || true
podman rm pub-anycast-nginx || true
podman rm pub-anycast-dnsmasq || true
podman rm pub-anycast-update || true
podman rm pub-anycast-bird || true
podman rm pub-anycast || true
podman network rm podman-pub-anycast_host_bridge || true
podman-compose up -d --build