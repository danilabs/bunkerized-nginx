#!/bin/sh

# wget "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country&license_key=&suffix=tar.gz" -O toto.tar.gz
wget -O /etc/nginx/geoip.mmdb.gz https://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz
gunzip -f /etc/nginx/geoip.mmdb.gz
if [ -f /run/nginx/nginx.pid ] ; then
	/usr/sbin/nginx -s reload
fi
