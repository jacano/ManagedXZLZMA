msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x86"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="x64"
msbuild xz/project/liblzma.sln /p:Configuration="Release" /p:Platform="ARM"

msbuild ManagedLZMA.sln /p:Configuration="Release" /p:Platform="Any CPU"

nuget pack ManagedXZLZMA.nuspec