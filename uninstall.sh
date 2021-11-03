#!/bin/sh
systemctl disable instant_api
rm -f /usr/local/bin/instant_api
rm -f /lib/systemd/system/instant_api.service
systemctl daemon-reload
