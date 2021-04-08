import React from 'react';
import {View, Text} from 'react-native';

import {DeviceClose} from 'react-native-device-close';

export default () => {
    React.useEffect(() => {
        DeviceClose.onClose(() => console.log('It Works!'));
    }, []);

    return (
        <View>
            <Text>
                Close this app and see if the test message is printed in
                console.
            </Text>
        </View>
    );
};
