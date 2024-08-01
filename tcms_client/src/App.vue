

<template>
  <div class="container">
      <div class="medcine-wrapper">
          <medicine-board
              v-for="m of medicineList"
              :key="m.id"
              :data="m"
              @set-data="setData"
              @set-medicine-total="setMedicineTotal"
              @delete-medicine="deleteMedicine"
          />
      </div>
      <div class="total-wrapper">
          <div>
              <button :disabled="!isSubmitPass" @click="submitPrescription">提交配方</button>
          </div>
          <div>
              共<input type="number" v-model="dose" />剂，
              总计<span>{{ total }}</span>元
          </div>
      </div>
  </div>
</template>

<script setup lang="ts">

import MedicineBoard from "./components/MedicineBoard.vue";
import {computed, onMounted, ref, toRaw, watch} from "vue";

const  medicineList = ref([])

const dose = ref(1);

const isSubmitPass = ref(false);

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

        checkSubmitPass();

        return
    }

    medicineList.value[medicineList.value.length - 1] = {
        ...medicineList.value[medicineList.value.length - 1],
        ...medicine
    }



    medicineList.value.push({
        ...emptyData,
        name: ''
    });

    checkSubmitPass();
}

const setMedicineTotal = ({ id, total, dose }) => {
    medicineList.value = medicineList.value.map(m => {
        if (m.id === id) {
            m.total = Number(total);
            m.dose = Number(dose);
        }

        return m;
    });

    checkSubmitPass();
}

const deleteMedicine = (id) => {
    medicineList.value = medicineList.value.filter(m => m.id !== id);
}

watch(() => dose.value, () => {
    if (dose.value === '') {
        dose.value = 0;
    }

    if (!/^\d+/.test(dose.value)) {
        dose.value = 0;
        return;
    }
});

watch(() => medicineList.value, checkSubmitPass)

function checkSubmitPass () {
    if (!medicineList.value.slice(0, medicineList.value.length - 1).length) {
        isSubmitPass.value = false;
        return;
    }

    isSubmitPass.value = medicineList.value.slice(0, medicineList.value.length - 1).every(m => {
        return m.id !== 0 && m.dose != 0;
    });
}

function submitPrescription () {
    const prescription = {
        dose: dose.value,
        total: Number(total.value),
        medicineList: toRaw(medicineList.value).slice(0, medicineList.value.length - 1)
    }

    console.log(prescription)
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
        padding: 50px 0;
        display: flex;
        justify-content: space-between;

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

        button {
            outline: none;
            background-color: #1989fa;
            border: 1px solid #1989fa;
            color: #fff;
            width: 120px;
            height: 38px;

            &:disabled {
                opacity: .5;
             }
        }
    }
}

</style>
