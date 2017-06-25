ARG ARCH

FROM astroswarm/base-$ARCH:latest

RUN apt-get -y update

# Install X dependencies
RUN apt-get -y install \
  websockify

EXPOSE 6900

CMD /usr/bin/websockify 0.0.0.0:6900 $VNC_HOST:$VNC_PORT
