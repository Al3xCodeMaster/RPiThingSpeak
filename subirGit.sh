#!/usr/bin/env bash
#
# Este script sube datos relativos a un seguidor en github
# a un canal de ThingSpeak.
#
# Date: 2019-09-17
#
apiKey="819A9924L8VZLCUW"



Followers=$(python /home/pi/Desktop/GitHub.py)

update=$(curl --silent --request POST --header "X-THINGSPEAKAPIKEY: $apiKey" --data "field1=$Followers" "http://api.thingspeak.com/update")

if [ ${update} -eq 0 ]; then
  echo "[subirDatosTS] Error al subir datos"
  exit -1
else
  exit 0
fi
