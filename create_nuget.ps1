$env:PACKAGE_VERSION = Get-Content .\nuget_version.txt -Raw

nuget.exe pack src/ManagedXZLZMA/ManagedXZLZMA.Bindings/ManagedXZLZMA.Bindings.nuspec -Version $env:PACKAGE_VERSION -OutputDirectory nuget
nuget.exe pack src/ManagedXZLZMA/ManagedXZLZMA.Native/ManagedXZLZMA.Native.nuspec -Version $env:PACKAGE_VERSION -OutputDirectory nuget
nuget.exe pack src/ManagedXZLZMA/ManagedXZLZMA/ManagedXZLZMA.nuspec -Version $env:PACKAGE_VERSION -OutputDirectory nuget