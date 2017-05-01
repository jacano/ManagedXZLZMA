set VS2015="%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\Common7\Tools\vsvars32.bat"
set VS2017="%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsMSBuildCmd.bat"
if exist %VS2015% (call %VS2015%) else if exist %VS2017% (call %VS2017%)

msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x86"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x64"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="ARM"

nuget restore ManagedLZMA.sln
msbuild ManagedLZMA.sln /p:Configuration="Release" /p:Platform="Any CPU"

nuget pack ManagedXZLZMA.nuspec -Symbols