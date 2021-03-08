FROM cm2network/steamcmd

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/valheim/server +app_update 896660 validate +exit
RUN mkdir -p /home/steam/valheim/data
WORKDIR /home/steam/valheim/server
ADD start.sh .

# ValheimPlus
USER root
RUN apt-get update && apt-get install -y wget tar libc6-dev
USER steam
RUN curl -s https://api.github.com/repos/valheimPlus/ValheimPlus/releases/latest | grep browser_download_url | grep UnixServer.tar.gz | cut -d '"' -f 4 | wget -qi -
RUN tar -xzf UnixServer.tar.gz
RUN rm UnixServer.tar.gz

VOLUME /home/steam/valheim/data
VOLUME /home/steam/valheim/server/BepInEx/config
EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp

ENTRYPOINT [ "/bin/bash", "./start.sh" ]
