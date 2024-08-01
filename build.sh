# set version
export ERPNEXT_VERSION=v15.29.4

# build
docker buildx bake --no-cache --set *.platform=linux/arm64 

# Retagging
docker tag frappe/erpnext:ger$ERPNEXT_VERSION  ghcr.io/germa89/erpnext:$ERPNEXT_VERSION

# Pushing
docker push ghcr.io/germa89/erpnext:$ERPNEXT_VERSION