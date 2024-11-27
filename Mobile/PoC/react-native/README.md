# React Native POC

## Requirements

Ensure you have the following tools installed on your system:
- Node.js: Install the latest stable version from Node.js Official Site.
- React Native CLI: Install it globally using npm install -g react-native-cli.
- Code Editor: Preferably Visual Studio Code or Android Studio.
- Android Studio: Ensure Android SDK and Emulator are set up correctly.
- Xcode (for macOS/iOS): Install it from the Mac App Store for iOS development.
- Device: An emulator or a physical device for testing.


`git clone git@github.com:epitech-mirroring/Wytness-docs.git`
cd Wytness-docs/react-native

## Install Dependencies

Use npm or yarn to install the project dependencies:

npm install
# or
yarn install

## Run the Project

For Android:
- Start the Metro bundler (if not started automatically):
`npm start`
- Open the Android emulator or connect a physical device, then run:
`npx react-native run-android`

For iOS:
- Install CocoaPods dependencies:
`cd ios && pod install && cd ..`
- Start the Metro bundler (if not started automatically):
`npm start`
- Open the iOS simulator or connect a physical device, then run:
`npx react-native run-ios`

