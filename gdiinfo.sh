#!/usr/bin/env bash
hardware_id=$(/usr/bin/xxd -s 0x10 -l 16 "$1" | cut -c 52- | tr -d '\n')
hardware_vendor_id=$(/usr/bin/xxd -s 0x20 -l 16 "$1" | cut -c 52- | tr -d '\n')
media_id=$(/usr/bin/xxd -s 0x30 -l 5 "$1" | cut -c 52- | tr -d '\n')
media_info=$(/usr/bin/xxd -s 0x35 -l 11 "$1" | cut -c 52- | tr -d '\n')
area=$(/usr/bin/xxd -s 0x40 -l 8 "$1" | cut -c 52- | tr -d '\n')
peripheral=$(/usr/bin/xxd -s 0x48 -l 8 "$1" | cut -c 52- | tr -d '\n')
product_number=$(/usr/bin/xxd -s 0x50 -l 10 "$1" | cut -c 52- | tr -d '\n')
version_number=$(/usr/bin/xxd -s 0x5A -l 6 "$1" | cut -c 52- | tr -d '\n')
release_date=$(/usr/bin/xxd -s 0x60 -l 8 "$1" | cut -c 52- | tr -d '\n')
maker_id=$(/usr/bin/xxd -s 0x80 -l 16 "$1" | cut -c 52- | tr -d '\n')
game_title=$(/usr/bin/xxd -s 0x90 -l 128 "$1" | cut -c 52- | tr -d '\n')

echo "Path:           $(dirname $1)"
echo "Hardware ID:    $hardware_id"
echo "Vendor ID:      $hardware_vendor_id"
echo "Media ID:       $media_id"
echo "Media Info:     $media_info"
echo "Region:         $area"
echo "Peripheral:     $peripheral"
echo "Product Number: $product_number"
echo "Version Number: $version_number"
echo "Release Date:   $(date -jf '%Y%m%d' "$release_date" '+%A, %d %B %Y')"
echo "Maker ID:       $maker_id"
echo "Game Title:     $game_title"
