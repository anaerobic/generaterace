/bin/sh

git pull origin

cd GenerateRace/GenerateRace

docker build -t generate-race .

cd ../..

cd StreamingFSharp/StreamingFSharp

docker build -t streaming f-sharp .

cd ../..
