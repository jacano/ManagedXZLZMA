pushd src/xzlzma.iOS

xcodebuild -configuration Release -sdk iphonesimulator clean build
xcodebuild -configuration Release -sdk iphoneos clean build
lipo -create -output "build/libxzlzma.a" "build/Release-iphoneos/libxzlzma.a" "build/Release-iphonesimulator/libxzlzma.a"

popd

sh upload_ios_build.sh
