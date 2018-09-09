pushd src/xzlzma.Android

ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=./Application.mk

popd

rm -rf artifacts/android
mkdir -p artifacts/android
mv -v src/xzlzma.android/libs/* artifacts/android/
cp -r artifacts/android/armeabi-v7a artifacts/android/armeabi/
