if not defined NUGET_KEY ( set /p NUGET_KEY=<..\secrets\nugetkey.txt )
set /p PACKAGE_VERSION=<version.txt

nuget push ManagedXZLZMA.%PACKAGE_VERSION%.nupkg %NUGET_KEY% -Source https://www.nuget.org/api/v2/package
