. ".\helper.ps1"

pushd src/xzlzma.Android

ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=./Application.mk

popd

if (-not (Test-Path "artifacts")) { New-Item "artifacts" -type directory -force }
if (-not (Test-Path "artifacts/android")) { New-Item "artifacts/android" -type directory -force }

Move-Item "src/xzlzma.Android/libs" "artifacts/android" -Force
