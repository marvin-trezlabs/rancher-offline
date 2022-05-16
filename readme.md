# Script for running rancher Offline
Requirements:
___
- rancher-latest.tar image local file or run import Script
  
Steps:
___
Load docker image and run docker-compose file (With a user with permissions)
```bash
sh script.sh
```

Access Rancher on 
```bash
localhost:443
```

Follow the rancher installation instructions. Find Container ID to get initial password
Example:
```bash
docker ps

# To get bootstrap password 
docker logs  rancher_server  2>&1 | grep "Bootstrap Password:"
```

##  If you like to re import the image
--- 

Pull the image
```bash
sh import.sh
```