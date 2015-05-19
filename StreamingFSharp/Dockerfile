FROM anaerobic/fsharp-runtime-nuget

RUN mono nuget.exe restore
RUN xbuild /p:BuildWithMono="true" StreamingFSharp.sln

CMD []
ENTRYPOINT ["mono", "StreamingFSharp/bin/Debug/StreamingFSharp.exe"]
