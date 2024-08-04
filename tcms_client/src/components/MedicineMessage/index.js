import MedicineMessage from "./MedicineMessage.vue";
import { createApp } from 'vue';

MedicineMessage.alert = function (props) {
    let container = document.createElement('div');
    const messageBox = createApp(MedicineMessage, {
        data: props.data,
        close
    });

    open();

    function open () {
        messageBox.mount(container);
        document.body.appendChild(container);
    }

    function close () {
        messageBox.unmount();
        container.remove();
        container = null;
    }
}

export default MedicineMessage;