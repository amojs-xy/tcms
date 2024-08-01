

<template>
  <div class="container">
      <div class="medcine-wrapper">
          <medicine-board v-for="m of medicineList" :key="m.id" :data="m" @set-data="setData" @set-medicine-total="setMedicineTotal" />
      </div>
      <div class="total-wrapper">
          共<input type="number" v-model="dose" />剂，
          总计<span>{{ total }}</span>元
      </div>
  </div>
</template>

<script setup lang="ts">

import MedicineBoard from "./components/MedicineBoard.vue";
import {computed, onMounted, ref} from "vue";

const  medicineList = ref([])

const dose = ref(1);

const total = computed(() => {
    let singleTotal = medicineList.value.reduce((prev, next) => {
        prev += Number(next.total);
        return prev;
    }, 0);

    return (singleTotal * dose.value).toFixed(1);
})

const emptyData = {
    "id": 0,
    "name": "",
    "alias": "0",
    "tastingIds": "0",
    "attributionIds": "0",
    "effect": "0",
    "price": 0,
    "unit": "g",
    "total": 0,
    "dose": 0
}

onMounted(() => {
    medicineList.value.push(emptyData);
});

const setData = (medicine) => {
    const hasData = medicineList.value.find(m => m.id === medicine.id);

    if (hasData) {
        medicineList.value = medicineList.value.map(m => {
            if (m.id === medicine.id) {
                m = {
                    ...m,
                    ...medicine
                }
            }

            return m;
        })

        return
    } else {
        medicineList.value[medicineList.value.length - 1] = {
            ...medicineList.value[medicineList.value.length - 1],
            ...medicine
        }
    }

    medicineList.value.push({
        ...emptyData,
        name: ''
    });
}

const setMedicineTotal = ({ id, total, dose }) => {
    medicineList.value = medicineList.value.map(m => {
        if (m.id === id) {
            m.total = total;
            m.dose = dose;
        }

        return m;
    });
}

</script>

<style lang="scss" scoped>
.container {
    width: 950px;
    margin: 0 auto;

    .medcine-wrapper {
        display: flex;
        flex-wrap: wrap;
        flex-direction: row;
        justify-content: flex-start;
        padding: 50px 0;
    }

    .total-wrapper {
        border-top: 1px solid #ededed;
        padding: 50px;
        display: flex;
        justify-content: flex-end;

        font-size: 20px;

        input {
            text-align: center;
            border: 1px solid transparent;
            outline: none;
            width: 50px;
            font-size: 20px;

            &:focus {
               border-color: #ccc;
             }
        }
    }
}

</style>
