#!/bin/sh
if [ ! -f UUID ]; then
  UUID="04b45ed6-803b-4331-abb0-609d990b7f44"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

