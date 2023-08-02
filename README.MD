# How to use it
1. Clone https://github.com/EIDA/routing
1. Copy contents of this repository into directory containing routing service
1. Go to the directory containing routing service
1. Run `docker-compose -p 'routing' up -d --no-deps --build`
1. Add crontab entry to update the service autimatically (see below) or `docker exec -it routing_eida_routing_1 bash` and run it manually

# Crontab entry on the host
Please keep in mind that container name (`routing_eida_routing_1`) migh change.
```
# Update the EIDAWS-Routing Web Service (run the updateAll.py script and restart the Docker)
0 6 * * * docker exec routing_eida_routing_1 bash -c "cd /data/routing/data/ && ./updateAll.py -l INFO > /data/routing/data/updateAll.log 2>&1" && docker restart routing_eida_routing_1 2>&1
```
