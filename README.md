# TorrentNinja

## Overview
TorrentNinja is a bash script that searches for anime torrents on [nyaa.si](https://nyaa.si) based on user input, extracts the magnet link from the top result, and then uses [peerflix](https://github.com/mafintosh/peerflix) to stream the anime video in the terminal using [mpv](https://mpv.io/).

## Prerequisites
- [curl](https://curl.se/)
- [peerflix](https://github.com/mafintosh/peerflix)
- [mpv](https://mpv.io/)

## Usage
```bash
./torrentNinja.sh [anime title]
