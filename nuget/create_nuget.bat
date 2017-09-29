@echo off

pushd ..

call copy_native_libs.bat nuget\build\MonoAndroid nuget\build\uap10.0 nuget\build\net45 nuget\build\XamariniOS

xcopy /F /R /Y /I src\ManagedXZLZMA\android\ManagedXZLZMA.targets nuget\build\MonoAndroid\*
xcopy /F /R /Y /I src\ManagedXZLZMA\windows\ManagedXZLZMA.targets nuget\build\net451\*
xcopy /F /R /Y /I src\ManagedXZLZMA\uwp\ManagedXZLZMA.targets nuget\build\uap10.0\*


xcopy /F /R /Y /I output\ManagedXZLZMA\ManagedXZLZMA.dll nuget\lib\netstandard1.2\*

REM xcopy /F /R /Y /I src\ManagedXZLZMA.iOS\ios\ManagedXZLZMA.targets nuget\build\XamariniOS\*
REM xcopy /F /R /Y /I output\ManagedXZLZMA.iOS\ManagedXZLZMA.dll nuget\lib\XamariniOS\*

popd

set /p PACKAGE_VERSION=<version.txt

nuget pack ManagedXZLZMA.nuspec -Version %PACKAGE_VERSION%