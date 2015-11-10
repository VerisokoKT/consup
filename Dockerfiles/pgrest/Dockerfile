# consup_pgrest
# Consup postgrest image
#

FROM lekovr/consup_nginx

ENV DOCKERFILE_VERSION  151028

MAINTAINER Alexey Kovrizhkin <lekovr+docker@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

# -------------------------------------------------------------------------------
# Install PG client

RUN apt-get update && apt-get -y upgrade && apt-get -y install \
    postgresql-client git libgmp10

# -------------------------------------------------------------------------------
# PGWS staff

# Setup postgrest
# COPY asset/src/postgrest /usr/local/sbin/
COPY . /tmp/consup-build/
RUN for f in /tmp/consup-build/setup_*.sh ; do echo $f ;  . $f ; done && rm -rf /tmp/consup-build

# -------------------------------------------------------------------------------
# Setup Consup client

COPY consul /etc/consul
COPY supervisor.d /etc/supervisor/conf.d
COPY postgrest_dbinit.sh /usr/local/sbin/

WORKDIR /home/app

# ------------------------------------------------------------
# Backend server config

# postgresql hostname
ENV PG_HOST db.service.consul

# postgrest database & user
ENV DB_NAME pgrest

# postgrest user password
ENV DB_PASS SET_DB_PASS_HERE_OR_IN_fidm.yml

# key to create db via dbcc service
ENV DBCC_KEY SET_YOUR_DBCC_KEY_HERE_OR_IN_fidm.yml

# Secret used to encrypt and decrypt JWT tokens
ENV JWT_KEY SET_YOUR_JWT_KEY_HERE_OR_IN_fidm.yml