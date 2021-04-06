import React from 'react';
import {View, Text} from 'react-native';

import {DeviceClose} from 'react-native-device-close';

export default () => {
  React.useEffect(() => {
    DeviceClose.onClose(() => console.log('Test Message'));
  }, []);
  return (
    <View>
      <Text>React Native Device Close Demo! Close the app to test it.</Text>
    </View>
  );
};
