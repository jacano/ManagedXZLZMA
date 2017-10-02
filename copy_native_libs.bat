@echo off

xcopy /F /R /Y /I output\android\x86\libxzlzma.so %1%\x86\*
xcopy /F /R /Y /I output\android\x64\libxzlzma.so %1%\x86_64\*
xcopy /F /R /Y /I output\android\ARM\libxzlzma.so %1%\armeabi\*
xcopy /F /R /Y /I output\android\ARM\libxzlzma.so %1%\armeabi-v7a\*
xcopy /F /R /Y /I output\android\ARM64\libxzlzma.so %1%\arm64-v8a\*

xcopy /F /R /Y /I output\uwp\Win32\libxzlzmaUniversal\libxzlzma.dll %2%\x86\*
xcopy /F /R /Y /I output\uwp\x64\libxzlzmaUniversal\libxzlzma.dll %2%\x64\*
xcopy /F /R /Y /I output\uwp\ARM\libxzlzmaUniversal\libxzlzma.dll %2%\arm\*

xcopy /F /R /Y /I output\windows\Win32\libxzlzma.dll %3%\x86\*
xcopy /F /R /Y /I output\windows\x64\libxzlzma.dll %3%\x64\*

call grab_ios_build.bat
xcopy /F /R /Y /I output\ios\fat\libxzlzma.a %4%\fat\*