@echo off

pushd .
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsDevCmd.bat"
popd

pushd src

msbuild xzlzma.Classic/libxzlzma_dll.vcxproj /p:Configuration="Release" /p:Platform="Win32" /p:OutDir="../../output/windows/Win32/"
msbuild xzlzma.Classic/libxzlzma_dll.vcxproj /p:Configuration="Release" /p:Platform="x64" /p:OutDir="../../output/windows/x64/"

msbuild xzlzma.Universal/libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="Win32" /p:OutDir="../../output/uwp/Win32/"
msbuild xzlzma.Universal/libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="x64" /p:OutDir="../../output/uwp/x64/"
msbuild xzlzma.Universal/libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="ARM" /p:OutDir="../../output/uwp/ARM/"

del /s /f /q xzlzma.Android\x86
del /s /f /q xzlzma.Android\x64
del /s /f /q xzlzma.Android\ARM
del /s /f /q xzlzma.Android\ARM64

msbuild xzlzma.Android/libxzlzmaAndroid.vcxproj /p:Configuration="Release" /p:Platform="x86" /p:OutDir="../../output/android/x86/"
msbuild xzlzma.Android/libxzlzmaAndroid.vcxproj /p:Configuration="Release" /p:Platform="x64" /p:OutDir="../../output/android/x64/"
msbuild xzlzma.Android/libxzlzmaAndroid.vcxproj /p:Configuration="Release" /p:Platform="ARM" /p:OutDir="../../output/android/ARM/"
msbuild xzlzma.Android/libxzlzmaAndroid.vcxproj /p:Configuration="Release" /p:Platform="ARM64" /p:OutDir="../../output/android/ARM64/"

popd

call copy_native_libs.bat src\ManagedXZLZMA\android src\ManagedXZLZMA\uwp src\ManagedXZLZMA\windows src\ManagedXZLZMA.iOS\ios

pushd src

nuget restore ManagedCrunch.sln
msbuild ManagedCrunch/ManagedCrunch.csproj /p:Configuration="Release" /p:Platform="AnyCPU" /p:OutDir="../../output/ManagedCrunch/"
msbuild ManagedCrunch.iOS/ManagedCrunch.iOS.csproj /p:Configuration="Release" /p:Platform="AnyCPU" /p:OutDir="../../output/ManagedCrunch.iOS/"

popd