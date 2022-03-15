# Building website

cd ./website
flutter pub get
flutter build web
cd ./scripts
dart bundler.dart