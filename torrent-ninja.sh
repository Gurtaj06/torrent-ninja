#!/bin/sh
query=$(printf '%s' "$*" | tr ' ' '+')
page=$(curl -s "https://nyaa.si/?f=0&c=1_2&q=$query" | grep -Eo "view/[0-9]+" | head -n 1)
torrent_id=$(echo "$page" | cut -d'/' -f2)

torrent_url="https://nyaa.si/view/$torrent_id"

html_content=$(curl -s $torrent_url)
magnet_links=$(echo "$html_content" | grep -Eo 'magnet:[^"]+')
if [ -n "$magnet_links" ]; then
	peerflix -l -k "$magnet_links" -- --hwdec=auto
else
	echo "Torrent not found on nyaa.si."
fi
