$env:PACKAGE_VERSION = Get-Content .\nuget_version.txt -Raw
if (-not (Test-Path env:NUGET_KEY)) { $env:NUGET_KEY = Get-Content .\secrets\nuget_key.txt -Raw }

nuget.exe push nuget/ManagedXZLZMA.Bindings.$env:PACKAGE_VERSION.nupkg $env:NUGET_KEY -Source https://api.nuget.org/v3/index.json
nuget.exe push nuget/ManagedXZLZMA.Native.$env:PACKAGE_VERSION.nupkg $env:NUGET_KEY -Source https://api.nuget.org/v3/index.json
nuget.exe push nuget/ManagedXZLZMA.$env:PACKAGE_VERSION.nupkg $env:NUGET_KEY -Source https://api.nuget.org/v3/index.json