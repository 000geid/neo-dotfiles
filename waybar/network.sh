#!/bin/bash
# Get network interface
IFACE=$(ip route | grep default | awk '{print $5}' | head -1)
[ -z "$IFACE" ] && echo '{"text": " Disconnected", "tooltip": "No network"}' && exit

# Get stats
RX1=$(cat /sys/class/net/$IFACE/statistics/rx_bytes)
TX1=$(cat /sys/class/net/$IFACE/statistics/tx_bytes)
sleep 1
RX2=$(cat /sys/class/net/$IFACE/statistics/rx_bytes)
TX2=$(cat /sys/class/net/$IFACE/statistics/tx_bytes)

# Calculate in Mb/s
DOWN_MB=$(echo "scale=1; ($RX2 - $RX1) * 8 / 1000000 / 1" | bc)
UP_MB=$(echo "scale=1; ($TX2 - $TX1) * 8 / 1000000 / 1" | bc)

# Get IP and ESSID
IP=$(ip -4 addr show $IFACE | grep inet | awk '{print $2}' | cut -d/ -f1)
ESSID=$(iwgetid -r $IFACE 2>/dev/null)

# Format
if [ -n "$ESSID" ]; then
    TEXT=" $ESSID  ↓ $DOWN_MB Mb/s  ↑ $UP_MB Mb/s"
    TOOLTIP="Network: $ESSID\n$IFACE: $IP\n↓ $DOWN_MB Mb/s ↑ $UP_MB Mb/s"
else
    TEXT="   ↓ $DOWN_MB Mb/s  ↑ $UP_MB Mb/s"
    TOOLTIP="$IFACE: $IP\n↓ $DOWN_MB Mb/s ↑ $UP_MB Mb/s"
fi

echo "{\"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\"}"
