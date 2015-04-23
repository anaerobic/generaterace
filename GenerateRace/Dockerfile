FROM icecrime/fsharp

COPY . /app
WORKDIR /app
ONBUILD ADD . /app
ONBUILD RUN xbuild /p:BuildWithMono="true" /app/GenerateRace.sln
ONBUILD RUN /usr/bin/fsharpc --out:Program.exe /app/*.fs

CMD []
ENTRYPOINT ["/bin/bash"]