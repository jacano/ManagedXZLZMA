set VS2017="%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsMSBuildCmd.bat"
if exist %VS2017% (call %VS2017%)

msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x86"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x64"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="ARM"

msbuild ManagedLZMA.sln /p:Configuration="Release" /p:Platform="Any CPU"