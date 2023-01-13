# Tvip STB simple provision server
###### Set custom provision to STB MAC address:
````
sed -i '$i\10:27:BE:13:13:12 2;#comment-test' ./docker/nginx/rules/tvipmac.rules
````
###### Tests:
````
  curl -i -H "Mac-Address: 10:27:BE:13:13:12" http://tvip.lanta.me/prov/tvip_provision.xml

````

###### Make IP filter
set allowed networks to access
````
./docker/nginx/rules/byip.rules
````


start:
````
docker compose up -d
````