
# react-native-device-close

## Getting started

`$ npm install react-native-device-close --save`

### Mostly automatic installation

`$ react-native link react-native-device-close`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-device-close` and add `RNReactNativeDeviceClose.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeDeviceClose.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeDeviceClosePackage;` to the imports at the top of the file
  - Add `new RNReactNativeDeviceClosePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-device-close'
  	project(':react-native-device-close').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-device-close/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-device-close')
  	```


## Usage
```javascript
import RNReactNativeDeviceClose from 'react-native-device-close';

// TODO: What to do with the module?
RNReactNativeDeviceClose;
```
  