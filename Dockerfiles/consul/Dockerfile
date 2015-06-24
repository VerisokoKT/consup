# consup_consul
# Consup consul image
# https://registry.hub.docker.com/u/lekovr/consup_consul/

FROM lekovr/consup_base

ENV DOCKERFILE_VERSION  150130

MAINTAINER Alexey Kovrizhkin <lekovr+docker@gmail.com>

# -------------------------------------------------------------------------------
# Setup Consul server

COPY init.d /init.d
COPY consul /etc/consul

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp

# consul resolver
ENV DNS_MASTER 8.8.8.8

VOLUME ["/var/lib/consul"]

CMD ["/init.d.sh", "/usr/local/bin/consul", "agent", "-config-dir=/etc/consul/conf.d" ]