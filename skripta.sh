#!/bin/bash


##vpnbook.com

echo "Script must be runned with root privilegies"
#da ispisuje sta sve da radi echujeee

echo "Setting link down..."
ip link set enp2s0 down

echo "Blocking all traffic..."
#sudo ufw status verbose
ufw deny out from any to any

echo "Allow traffic from NIC to vpn server..."
#grep VPN server IP address and port
# /home/hklbd/fw/vpnbook-ca1-tcp443.ovpn
ufw allow in on enp2s0 to 142.4.206.228 port 443
ufw allow in on enp2s0 to any port 53

#echo "Setting link up..."
ip link set enp2s0 up

#echo "Connecting to VPN server.."
#openvpn /home/hklbd/fw/vpnbook-ca1-tcp443.ovpn


##https://www.youtube.com/watch?v=e3fnsGHe8eE


