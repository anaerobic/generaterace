FROM icecrime/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln

CMD /app/do-race.sh