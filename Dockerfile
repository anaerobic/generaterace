FROM icecrime/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln

CMD []
ENTRYPOINT ["mono", "/app/GenerateRace/bin/Debug/GenerateRace.exe", "5000", "5", "|", "mono", "/app/StreamingFSharp/bin/Debug/StreamingFSharp.exe"]