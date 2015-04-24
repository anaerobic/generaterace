FROM anaerobic/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln
WORKDIR /app/GenerateRace/bin/Debug
CMD []
ENTRYPOINT ["mono", "GenerateRace.exe"]
