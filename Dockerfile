ARG ARCH

FROM astroswarm/base-$ARCH:latest

RUN apt-get -y update

# Install X dependencies
RUN apt-get -y install \
  websockify

EXPOSE 6900

CMD /usr/bin/websockify 6900 localhost:$VNC_PORT
