FROM icecrime/fsharp

COPY . /app
WORKDIR /app
ONBUILD ADD . /app
ONBUILD RUN apt-get update
ONBUILD RUN apt-get install curl
ONBUILD RUN curl -L http://nuget.org/nuget.exe -o nuget.exe
ONBUILD RUN mono nuget.exe restore
ONBUILD RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln

CMD []
ENTRYPOINT ["mono", "/app/bin/Debug/GenerateRace.exe", "5000 5"]