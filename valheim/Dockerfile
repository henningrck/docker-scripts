FROM cm2network/steamcmd

RUN mkdir -p /home/steam/valheim/server
RUN mkdir -p /home/steam/valheim/data
WORKDIR /home/steam/valheim
ADD start.sh .

VOLUME /home/steam/valheim/server
VOLUME /home/steam/valheim/data
EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp

ENTRYPOINT [ "/bin/bash", "./start.sh" ]
