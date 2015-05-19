FROM anaerobic/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" GenerateRace.sln

CMD []
ENTRYPOINT ["mono", "GenerateRace/bin/Debug/GenerateRace.exe"]
