import { NativeModules } from 'react-native';

const module = NativeModules.ReactNativeDeviceClose;

export const DeviceClose = {
    /**
     * Add a callback to be executed when the application closes.
     * @param callback The callback to be executed on close.
     */
    onClose: module.onClose as (callback: () => void) => void,

}

