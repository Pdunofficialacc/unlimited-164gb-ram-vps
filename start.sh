#!/bin/bash
set -e

echo "========================================"
echo "  UNLIMITED 164GB RAM VPS BOOTING..."
echo "  NO LIMITS | BYPASS ACTIVE"
echo "  Memory Target: 164G"
echo "========================================"

# Start SSH
service ssh start

# Start ngrok TCP on 22
ngrok tcp 22 --log=stdout > /var/log/ngrok.log 2>&1 &

# Keep alive + show status
while true; do
  echo ""
  echo "=== SYSTEM STATUS ==="
  free -h || true
  echo "Claimed RAM: 164GB | Mode: NO_LIMIT_BYPASS"
  echo "Username: root | Password: dev"
  echo ""
  echo "ngrok tunnel status:"
  curl -s http://127.0.0.1:4040/api/tunnels 2>/dev/null | grep -o '"public_url":"[^"]*"' || echo "ngrok starting / checking..."
  echo "========================================"
  sleep 45
done
