#!/usr/bin/env bash
docker stop pub-anycast pub-anycast-bird pub-anycast-update pub-anycast-dnsmasq || true
docker rm pub-anycast pub-anycast-bird pub-anycast-update pub-anycast-dnsmasq || true
docker network rm docker-pub-anycast_host_bridge || true
docker-compose up -d --build