FROM alpine:3.20.1

LABEL maintainer="Dschinghis Kahn"

####################################################
######### DEFAULT VALUES                 ###########
####################################################
ENV TIMEZONE=UTC

####################################################
######### INSTALLING BASE STUFF          ###########
####################################################
RUN \
  apk add --no-cache tzdata

####################################################
######### INSTALLING DNSMASQ             ###########
####################################################
RUN \
  apk add --no-cache dnsmasq

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

HEALTHCHECK CMD nc -z localhost 53 || exit 1

CMD ["/init"]
