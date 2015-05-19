mkdir data

GenerateRace\GenerateRace\bin\Debug\GenerateRace.exe 5000 5 > data\race5kx5.json

StreamingFSharp\StreamingFSharp\bin\Debug\StreamingFSharp.exe data\race5kx5.json > data\race5kx5results-fsharp.json

StreamingCSharp\StreamingCSharp\bin\Debug\StreamingCSharp.exe data\race5kx5.json > data\race5kx5results-csharp.json

type data\race5kx5.json | node StreamingTypeScript\main.js > data\race5kx5results-node.json