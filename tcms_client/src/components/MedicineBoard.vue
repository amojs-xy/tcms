<template>
<div class="medicine-board">
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
        <div class="medicine-select" :style="{ display: isListShow ? '' : 'none' }">
            <div
                v-for="(m, i) of medicineList"
                :class="['option', activeIndex === i ? 'active' : '']"
                :key="m.id"
                @click="selectMedicine(m)"

            >{{ m.name }}</div>
        </div>
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
import {searchMedicineService} from "../service/medicine.ts";

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
    'set-medicine-total'
])

const searchMedicine = async () => {
    const value = props.data.name.trim();
    activeIndex.value = 0;
    if (value.length) {
        try {
            const { data } = await searchMedicineService(value);

            if (data === null) {
                isListShow.value = false;
                medicineList.value = [];
                return;
            }

            if (data && data.length > 0) {
                medicineList.value = data;
                isListShow.value = true;
            }
        } catch (e) {
            isListShow.value = false;
            medicineList.value = [];
        }
    } else {
        isListShow.value = false;
        medicineList.value = [];
    }
}

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
        return;
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
    width: 25%;
    height: 200px;
    border: 1px solid #ededed;
    box-sizing: border-box;
    padding: 20px;
    /*margin: 10px;*/

    .name-wrapper {
        position: relative;
        margin-bottom: 20px;

        input {
            width: 100%;
            height: 50px;
            font-size: 30px;
        }

        .medicine-select {
            position: absolute;
            left: 0;
            top: 50px;
            width: 100%;
            background-color: #fff;
            border: 1px solid #ededed;
            box-sizing: border-box;
            
            .option {
                text-align: center;
                cursor: pointer;
                height: 30px;
                line-height: 30px;

                &:hover {
                   background-color: #efefef;
                 }
            }

            .active {
                background-color: #efefef;
            }
        }
    }

    .dos-wrapper {
        input {
            width: 80px;
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
        margin-top: 30px;
        color: #999;
        font-size: 14px;
    }

}
</style>