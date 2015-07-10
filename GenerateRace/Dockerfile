FROM anaerobic/fsharp-runtime-nuget

MAINTAINER Michael W. Martin <mwm.cal@gmail.com>

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" GenerateRace.sln

CMD []
ENTRYPOINT ["mono", "GenerateRace/bin/Debug/GenerateRace.exe"]
