FROM alpine:latest

LABEL maintainer="Dschinghis Kahn"

####################################################
######### DEFAULT VALUES                 ###########
####################################################
#ENV TIMEZONE=UTC
#ENV FG_LOG_LEVEL=info
#ENV FG_PASSWORD=flexget
#ENV TR_ALLOWED=127.0.0.1,192.168.0.*
#ENV TR_USERNAME=transmission
#ENV TR_PASSWORD=transmission

####################################################
######### INSTALLING DNSMASQ             ###########
####################################################
RUN apk add --no-cache dnsmasq

####################################################
######### SETUP FILES & FOLDERS          ###########
####################################################
COPY init /

####################################################
######### CLEANUP                        ###########
####################################################
RUN rm -rf /tmp/* /root/.cache

EXPOSE 53/TCP
EXPOSE 51413/TCP
EXPOSE 51413/UDP

CMD ["/init"]
