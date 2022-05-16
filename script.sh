# --------- VARIABLES -----------------

# Volume mount path
HOST_RANCHER_DATA="$PWD/rancher_data"
# Ports
HTTPS_PORT=443
HTTP_PORT=8888
# Labeling
CONTAINER_NAME=rancher_server

# ------- Load TAR file ---------------
echo "Loading Rancher image from tar file"
docker load < rancher-latest.tar

# ------- Running container -----------
docker run -d --name "${CONTAINER_NAME}" \
  --restart=unless-stopped \
  -p "${HTTP_PORT}":80 -p "${HTTPS_PORT}":443 \
  -v "${HOST_RANCHER_DATA}":/var/lib/rancher \
  --privileged \
  rancher/rancher:latest

# TODO: Probably download a rancher agent to be able to create a cluster with rancher.

# QUESTIONS:
# - Do we have to actually create a cluster?