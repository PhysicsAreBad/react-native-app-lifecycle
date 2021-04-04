//@ts-ignore
const g = global as any;

const DeviceClose = {
    /**
     * 
     */
    onClose: g.onClose as (callback: () => void) => void,

}

