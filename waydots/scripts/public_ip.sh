#!/bin/bash
public_ip=$(curl -s --max-time 2 https://ipinfo.io/ip)
public_ip=${public_ip:-"No Public IP"}

# Private IP with fallback
private_ip=$(ip -4 addr show scope global | awk '/inet /{print $2}' | cut -d/ -f1 | head -n1)
private_ip=${private_ip:-"No Private IP"}

echo "<span size='small'><tt><u>|$private_ip | $public_ip|</u></tt></span>"
