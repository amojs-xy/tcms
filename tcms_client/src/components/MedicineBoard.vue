<template>
<div class="medicine-board">
    <div class="name-wrapper">
        <input type="text" v-model="medicineName" placeholder="中药名称" @input="searchMedicine" />
        <div class="medicine-select" :style="{ display: isListShow ? '' : 'none' }">
            <div
                class="option"
                v-for="m of medicineList"
                :key="m.id"
                @click="selectMedicine(m)"
            >{{ m.name }}</div>
        </div>
    </div>
    <div class="dos-wrapper">
        <input type="number" v-model="medicineDose" placeholder="0" @input="inputDose" />
        <span>g</span>
    </div>
    <div class="price-wrapper" :style="{ display: (medicineDose.value !== 0 && medicineName.value !== '') ? '' : 'none' }">
        <span>{{ price }}元</span>
    </div>
</div>
</template>

<script setup>
import {computed, ref} from 'vue';
import {searchMedicineService} from "../service/medicine.ts";

const medicineName = ref('');
const medicineDose = ref(0);
const isListShow = ref(false)
const medicineList = ref([]);
const medicineInfo = ref(null);
const price = ref(0);

const emit = defineEmits(['send-data'])

const searchMedicine = async () => {
    const value = medicineName.value.trim();
    if (value.length) {
        try {
            const { data } = await searchMedicineService(value);

            if (data === null) {
                isListShow.value = false;
                medicineList.value = [];
                medicineName.value = '';
                return;
            }

            if (data && data.length > 0) {
                medicineList.value = data;
                isListShow.value = true;
            }
        } catch (e) {
            isListShow.value = false;
            medicineList.value = [];
            medicineName.value = '';
        }
    }
}

const selectMedicine = (medicineInfo) => {
    medicineName.value = medicineInfo.name;
    medicineInfo.value = medicineInfo;
    isListShow.value = false;
    emit('send-data', medicineInfo);
}

const inputDose = () => {
    if (!/^\d+/.test(medicineDose.value)) {
        medicineDose.value = 0;
        return;
    }

    price.value = medicineInfo.price * medicineDose.value;
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
    width: 200px;
    height: 200px;
    border: 1px solid #ededed;
    box-sizing: border-box;
    padding: 20px;
    margin-right: 30px;
    margin-top: 30px;

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

}
</style>