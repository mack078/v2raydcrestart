echo "#/bin/bash 
cd v2ray-poseidon/docker/sspanel/ws-tls/ 
dc restart" > /root/dcrestart.sh
chmod 777 /root/dcrestart.sh
crontab -l | { cat; echo "0 5 * * * /root/dcrestart.sh"; } | crontab -
