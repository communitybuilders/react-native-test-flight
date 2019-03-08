# react-native-test-flight

## Getting started

`$ yarn add react-native-test-flight`

### Mostly automatic installation

`$ react-native link react-native-test-flight`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-test-flight` and add `RNTestFlight.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTestFlight.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTestFlightPackage;` to the imports at the top of the file
  - Add `new RNTestFlightPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-test-flight'
  	project(':react-native-test-flight').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-test-flight/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-test-flight')
  	```

## Usage
```javascript
import RNTestFlight from 'react-native-test-flight';

if (RNTestFlight.isTestFlight) {
  console.log("Ground control to Major Tom");
}
```
