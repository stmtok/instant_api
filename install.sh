#!/bin/sh
pip3 install -r requirements.txt
cp $(pwd)/instant_api.py /usr/local/bin/instant_api
cp $(pwd)/instant_api.service /lib/systemd/system/instant_api.service
systemctl daemon-reload
