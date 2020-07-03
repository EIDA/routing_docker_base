# How to use it
txt

# Crontab entry on the host
Please keep in mind that container name (`routing_eida_routing_1`) migh change.
```
# Update the EIDAWS-Routing Web Service (run the updateAll.py script and restart the Docker)
0 6 * * * docker exec routing_eida_routing_1 bash -c "cd /data/routing/data/ && ./updateAll.py -l INFO > /data/routing/data/updateAll.log 2>&1" && docker restart routing_eida_routing_1 2>&1
```
