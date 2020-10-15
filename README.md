# Description
docker-compose with pihole and cloudflared setup to support DNS over HTTPS.

## Usage
1 change the **WEBPASSWORD** environment variable of pihole service
2 `docker-compose up -d`
3 add the IP of the device running pihole to the DNS field of you router.