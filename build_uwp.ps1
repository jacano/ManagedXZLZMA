. ".\helper.ps1"

PrepareVSEnviroment

pushd src/xzlzma.Windows/universal

msbuild libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="Win32"
msbuild libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="x64"
msbuild libxzlzma_universal_dll.vcxproj /p:Configuration="Release" /p:Platform="ARM"

xcopy /F /R /Y /I Win32\Release\libxzlzma.dll build\x86\*
xcopy /F /R /Y /I x64\Release\libxzlzma.dll build\x64\*
xcopy /F /R /Y /I ARM\Release\libxzlzma.dll build\arm\*

popd

if (-not (Test-Path "artifacts")) { New-Item "artifacts" -type directory -force }
if (Test-Path "artifacts/uwp") { Remove-Item "artifacts/uwp" -Force -Recurse }
New-Item "artifacts/uwp" -type directory -force

Get-ChildItem -Path "src/xzlzma.Windows/universal/build" -Recurse | Move-Item -Force -Destination "artifacts/uwp"

