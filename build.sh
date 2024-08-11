# set version
export ERPNEXT_VERSION=v14.71.0
export FRAPPE_VERSION=v14.79.0

# build
docker buildx bake --no-cache --set *.platform=linux/arm64 && \

# Retagging
docker tag frappe/erpnext:ger$ERPNEXT_VERSION  ghcr.io/germa89/erpnext:$ERPNEXT_VERSION && \

# Pushing
docker push ghcr.io/germa89/erpnext:$ERPNEXT_VERSION