. ".\helper.ps1"

PrepareVSEnviroment

pushd src/xzlzma.Windows/classic

msbuild libxzlzma_dll.vcxproj /p:Configuration="Release" /p:Platform="Win32"
msbuild libxzlzma_dll.vcxproj /p:Configuration="Release" /p:Platform="x64"

xcopy /F /R /Y /I Win32\Release\libxzlzma.dll build\x86\*
xcopy /F /R /Y /I x64\Release\libxzlzma.dll build\x64\*

popd

if (-not (Test-Path "artifacts")) { New-Item "artifacts" -type directory -force }
if (-not (Test-Path "artifacts/windows")) { New-Item "artifacts/windows" -type directory -force }

Move-Item "src/xzlzma.Windows/classic/build" "artifacts/windows" -Force

