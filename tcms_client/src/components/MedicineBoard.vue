<template>
<div class="medicine-board" :data-id="data.id" @click="showMedicineInfo($event, data)">
    <span class="icon icon-times" @click="deleteMedicine(data.id)">&times;</span>
    <div class="name-wrapper">
        <input
            type="text"
            v-model="data.name"
            placeholder="中药名称"
            @input="searchMedicine"
            @blur="handleMedicineNameBlur"
            @keydown.up="handleMenuUp"
            @keydown.down="handleMenuDown"
            @keyup.enter="handleMenuEnter"
        />
        <div>
            <span class="name-tip">{{ data.jinPrice || 0 }}元/斤</span> | <span class="name-tip">{{ data.price }}元/g</span>
        </div>
        <medicine-menu
            :isListShow="isListShow"
            :medicine-list="medicineList"
            :active-index="activeIndex"
            @select-medicine="selectMedicine"
        ></medicine-menu>
    </div>
    <div class="dos-wrapper">
        <input type="number" v-model="medicineDose" placeholder="0" @input="inputDose" />
        <span>g</span>
    </div>
    <div class="price-wrapper" :style="{ display: data.total !== 0 ? '' : 'none' }">
        <span>{{ data.total }}元</span>
    </div>
</div>
</template>

<script setup>
import {ref} from 'vue';
import {searchMedicineService} from "../service/medicine.js";
import MedicineMenu from './MedicineMenu.vue';
import MedicineMessage from './MedicineMessage';
import _ from 'lodash'

const props = defineProps({
    data: Object
});

const medicineDose = ref(0);
const isListShow = ref(false)
const medicineList = ref([]);
const medicineInfo = ref(null);
const activeIndex = ref(0);

const emit = defineEmits([
    'set-data',
    'set-medicine-total',
    'delete-medicine'
])

const searchMedicine = _.debounce(
    async () => {
        const value = props.data.name.trim();
        activeIndex.value = 0;
        if (value.length) {
            try {
                const { data } = await searchMedicineService(value);

                if (data === null) {
                    medicineList.value = [{
                        "name": "未查询到数据"
                    }];
                    return;
                }

                if (data && data.length > 0) {
                    medicineList.value = data;
                    isListShow.value = true;
                }
            } catch (e) {
                medicineList.value = [{
                        "name": "查询出现错误"
                    }];
            }
        } else {
            isListShow.value = false;
            medicineList.value = [];
            emit('delete-medicine');
        }
    }, 300
)

const handleMedicineNameBlur = () => {
    setTimeout(() =>isListShow.value = false, 500);
}

const selectMedicine = (m) => {
    emit('set-data', m);
    medicineInfo.value = m;
    isListShow.value = false;
}

const inputDose = () => {
    if (!/^\d+/.test(medicineDose.value)) {
        medicineDose.value = 0;
    }

    if (props.data.id !== 0) {
        emit('set-medicine-total', {
            id: props.data.id,
            total: (props.data.price * medicineDose.value).toFixed(1),
            dose: medicineDose.value
        })
    }
}

const handleMenuUp = () => {
    if (activeIndex.value <= 0) return;
    activeIndex.value --;
}

const handleMenuDown = () => {
    if (activeIndex.value >= medicineList.value.length - 1) return;
    activeIndex.value ++;
}

const handleMenuEnter = () => {
    selectMedicine(medicineList.value[activeIndex.value]);
}

const deleteMedicine = (id) => {
    if (id === 0) return;
    emit('delete-medicine', id);
}

const showMedicineInfo = (e, data) => {
    const tar = e.target;

    if (tar.tagName.toLowerCase() === 'input') return;

    if (data.id === 0) return;

    MedicineMessage.alert({
        data: props.data
    });
}
</script>

<style lang="scss" scoped>
input {
    border: 1px solid transparent;
    outline: none;
    box-sizing: border-box;
}

input:focus {
    border-color: #ccc;
}

.medicine-board {
    position: relative;
    width: 25%;
    height: 200px;
    border: 1px solid #ededed;
    box-sizing: border-box;
    padding: 20px;

    .name-wrapper {
        position: relative;
        margin-bottom: 20px;

        .name-tip {
            color: #999;
            font-size: 14px;
        }


        input {
            width: 130px;
            height: 50px;
            font-size: 25px;
        }
    }

    .dos-wrapper {
        input {
            width: 60px;
            height: 30px;
            font-size: 20px;
            text-align: center;
        }

        span {
            font-size: 25px;
        }
    }

    .price-wrapper {
        display: flex;
        justify-content: flex-end;
        margin-top: 10px;
        color: #999;
        font-size: 14px;
    }

    .icon {
        position: absolute;
        top: 0;
        cursor: pointer;
        font-size: 20px;
        color: #666;

            &.icon-times {
                right: 10px;
            }
    }



}
</style>