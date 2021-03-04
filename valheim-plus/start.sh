#!/bin/sh

export templdpath=$LD_LIBRARY_PATH
export DOORSTOP_ENABLE=TRUE
export DOORSTOP_INVOKE_DLL_PATH=./BepInEx/core/BepInEx.Preloader.dll
export DOORSTOP_CORLIB_OVERRIDE_PATH=./unstripped_corlib
export LD_LIBRARY_PATH=./doorstop_libs:$LD_LIBRARY_PATH
export LD_PRELOAD=libdoorstop_x64.so:$LD_PRELOAD
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

echo "Starting server PRESS CTRL-C to exit"
./valheim_server.x86_64 -name $SERVER_NAME -port 2456 -world $WORLD_NAME -password $PASSWORD -savedir "/home/steam/valheim/data" -public 1

export LD_LIBRARY_PATH=$templdpath
