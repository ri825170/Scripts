# Little Script to disconnect OpenVpn from Full Tunnel and connect to Split Tunnel automatically

@ echo off
cd C:\Program Files\OpenVPN\bin
Taskkill /IM openvpn.exe /F
Taskkill /IM openvpn-gui.exe /F
cd C:\Program Files\OpenVPN\bin
openvpn-gui --connect VPN-config_file_name.ovpn


