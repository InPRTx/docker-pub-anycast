#!/usr/bin/env sh
ip link add dummydn42 type dummy || true
ip addr add 172.20.229.221/32 dev dummydn42 || true
ip addr add 172.20.229.222/32 dev dummydn42 || true
ip addr add fdf4:56da:a360::/128 dev dummydn42 || true
ip addr add fdf4:56da:a360::1/128 dev dummydn42 || true
ip addr add fdf4:56da:a360::2/128 dev dummydn42 || true
ip link set dummydn42 up || true
ip link add dunmmypub type dummy || true
ip addr add 100.64.0.2/32 dev dunmmypub || true
ip addr add 2a13:a5c3:f300::/128 dev dunmmypub || true
ip addr add 2a13:a5c3:f300::1/128 dev dunmmypub || true
ip addr add 2a13:a5c3:f300::2/128 dev dunmmypub || true
ip addr add 2a13:a5c3:f300::3/128 dev dunmmypub || true
ip link set dunmmypub up || true
sleep 2
ip addr del 10.253.169.2/30 dev eth0 || true
ip addr add fe80::2:7010:53/64 dev eth0 || true
echo "nameserver ::1" | tee /etc/resolv.conf > /dev/null
while true; do
    sleep 3600
done