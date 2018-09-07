pushd src/xzlzma.iOS

xcodebuild -configuration Release -sdk iphonesimulator clean build
xcodebuild -configuration Release -sdk iphoneos clean build

mkdir -p fat
lipo -create -output "fat/libxzlzma.a" "build/Release-iphoneos/libxzlzma.a" "build/Release-iphonesimulator/libxzlzma.a"

popd

rm -rf artifacts/ios
mkdir -p artifacts/ios
mv src/xzlzma.ios/fat/ artifacts/ios
