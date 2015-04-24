#!/bin/bash
 
if [[ $1 != "" ]]
then
        wget -c "$1";
        sudo shutdown -k 0;
else
        echo "Usage: sudo ./downloadAndShutdown <fileToDownload>";
fi

git pull origin

cd GenerateRace/GenerateRace

docker build -t generate-race .

cd ../..

cd StreamingFSharp/StreamingFSharp

docker build -t streaming f-sharp .

cd ../..
