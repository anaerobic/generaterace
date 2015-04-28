#!/bin/bash
 
if [[ $1 != "" ]]
then
        wget -c "$1";
        sudo shutdown -k 0;
else
        echo "Usage: sudo ./downloadAndShutdown <fileToDownload>";
fi

git pull origin

docker build -t generate-race GenerateRace

docker build -t streaming-fsharp StreamingFSharp

docker run --rm generate-race 5000 3 | docker run -i --rm streaming-fsharp