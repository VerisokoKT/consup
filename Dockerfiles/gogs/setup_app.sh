
# -------------------------------------------------------------------------------
# Install App

# https://gogs.io/docs/installation/install_from_binary

#https://dl.gogs.io/gogs_v0.7.33_linux_amd64.tar.gz
#https://github.com/gogits/gogs/releases/download/v0.9.46/linux_amd64.tar.gz
#https://dl.gogs.io/gogs_v0.9.46_linux_amd64.tar.gz

VER=v0.9.71 && PRJ=gogs \
  && echo "Setup $PRJ $VER" \
  && NAME=${PRJ}_${VER}_linux_amd64 \
  && curl -OL https://dl.gogs.io/${NAME}.tar.gz \
  && tar -xaf ${NAME}.tar.gz -C /opt/ \
  && rm ${NAME}.tar.gz

#https://packager.io/gh/pkgr/gogs/install?bid=377#debian-7-gogs

#apt-get install -y apt-transport-https
#wget -qO - https://deb.packager.io/key | apt-key add -
#echo "deb https://deb.packager.io/gh/pkgr/gogs $(lsb_release -cs) pkgr" | tee /etc/apt/sources.list.d/gogs.list
#apt-get update
#apt-get install gogs
