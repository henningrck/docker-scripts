FROM cm2network/steamcmd

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/valheim/server +app_update 896660 validate +exit
RUN mkdir -p /home/steam/valheim/data
WORKDIR /home/steam/valheim
ADD start.sh .

VOLUME /home/steam/valheim/data
EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp

ENTRYPOINT [ "/bin/bash", "./start.sh" ]
