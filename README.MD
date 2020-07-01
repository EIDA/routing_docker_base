# How to use it
txt

# Crontab entry on the host
```
# Update the EIDAWS-Routing Web Service (run the updateAll.py script and restart the Docker)
0 6 * * * docker exec routing_eida_routing_1 bash -c "cd /data/routing/data/ && ./updateAll.py > /data/routing/data/updateAll.log 2>&1" && docker restart routing_eida_routing_1 2>&1
```