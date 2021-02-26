#!/bin/bash

export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

echo "Starting server PRESS CTRL-C to exit"
./valheim_server.x86_64 -name $SERVER_NAME -port 2456 -world $WORLD_NAME -password $PASSWORD -savedir "/home/steam/valheim/data" -public 1

export LD_LIBRARY_PATH=$templdpath
