import { NativeModules } from 'react-native';

const module = NativeModules.ReactNativeDeviceClose;

export const DeviceClose = {
    /**
     * Add a callback to be executed when the application 
     */
    onClose: module.onClose as (callback: () => void) => void,

}

