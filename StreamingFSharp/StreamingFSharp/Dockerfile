FROM anaerobic/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" /app/StreamingFSharp.sln
WORKDIR /app/StreamingFSharp/bin/Debug
CMD []
ENTRYPOINT ["mono", "StreamingFSharp.exe"]
