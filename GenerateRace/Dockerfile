FROM icecrime/fsharp

COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y curl
RUN mozroots --import --sync
RUN curl -L http://nuget.org/nuget.exe -o nuget.exe
RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln

CMD []
ENTRYPOINT ["mono", "/app/bin/Debug/GenerateRace.exe", "5000 5"]