
flutter clean
rm pubspeck.lock
cd ios
rm -rf Pods
rm -rf Podfile.lock
pod deintegrate
flutter pub get
pod setup
pod install
cd ..