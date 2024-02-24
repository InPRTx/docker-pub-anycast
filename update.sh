#!/usr/bin/env sh
ip addr del 100.64.0.2/30 dev eth0
ip link add dummydn42 type dummy
ip addr add 172.20.197.176/32 dev dummydn42
ip addr add 172.20.197.177/32 dev dummydn42
ip addr add 172.20.197.178/32 dev dummydn42
ip addr add 172.20.197.179/32 dev dummydn42
ip addr add fdf4:56da:a360::/128 dev dummydn42
ip addr add fdf4:56da:a360::1/128 dev dummydn42
ip addr add fdf4:56da:a360::2/128 dev dummydn42
ip link set dummydn42 up
ip link add dunmmypub type dummy
ip addr add 23.146.72.2/32 dev dunmmypub
ip addr add 2a13:b487:4200::/128 dev dunmmypub
ip addr add 2a13:b487:4200::1/128 dev dunmmypub
ip addr add 2a13:b487:4200::2/128 dev dunmmypub
ip addr add 2a13:b487:4200::3/128 dev dunmmypub
ip link set dunmmypub up
