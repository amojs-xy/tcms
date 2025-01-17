

<template>
  <div class="container">
      <div class="medcine-wrapper">
          <vue-draggable
                  ref="el"
                  v-model="medicineList"
                  :disabled="disabled"
                  :animation="150"
                  ghostClass="ghost"
                  @start="onStart"
                  @update="onUpdate"
          >
              <medicine-board
                  v-for="m of medicineList"
                  :key="m.id"
                  :data="m"
                  @set-data="setData"
                  @set-medicine-total="setMedicineTotal"
                  @delete-medicine="deleteMedicine"
              />
          </vue-draggable>
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
      <div>
        <prescription :show="prescriptShow" :data="prescriptionData"></prescription>    
      </div>
  </div>
</template>

<script setup>

import MedicineBoard from "./components/MedicineBoard.vue";
import Prescription from './components/Prescription.vue';
import {computed, onMounted, ref, watch} from "vue";
import {VueDraggable} from 'vue-draggable-plus';

const el = ref();
const disabled = ref(false);

const onStart = (e) => {
    // console.log(e)
}

const onUpdate = () => {
    const id0MedicineIndex = medicineList.value.findIndex(m => m.id === 0);
    const finalIndex = medicineList.value.length - 1;

    if (id0MedicineIndex !== finalIndex) {
        const temp = medicineList.value[finalIndex];

        medicineList.value[finalIndex] = medicineList.value[id0MedicineIndex];
        medicineList.value[id0MedicineIndex] = temp;
    }
}

const  medicineList = ref([])
const prescriptionData = ref(null);
const prescriptShow = ref(false);

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
    if (!id && medicineList.value.length > 1) {
        medicineList.value = medicineList.value.slice(0, medicineList.value.length - 1);
        medicineList.value[medicineList.value.length - 1] = emptyData
        return;
    }

    medicineList.value = medicineList.value.filter(m => m.id !== id);
}

watch(() => dose.value, () => {
    if (dose.value === '') {
        dose.value = 0;
    }

    if (!/^\d+/.test(dose.value)) {
        dose.value = 0;
    }
});

watch(() => medicineList.value, checkSubmitPass)

function checkSubmitPass () {
    if (!medicineList.value.slice(0, medicineList.value.length - 1).length) {
        isSubmitPass.value = false;
        return;
    }

    isSubmitPass.value = medicineList.value.slice(0, medicineList.value.length - 1).every(m => {
        return m.id !== 0 && m.dose !== 0;
    });
}

function submitPrescription () {
    prescriptionData.value = {
        dose: dose.value,
        total: Number(total.value),
        medicineList: medicineList.value.slice(0, medicineList.value.length - 1)
    };
    prescriptShow.value = true;
}
</script>

<style lang="scss" scoped>
.container {
    width: 950px;
    margin: 0 auto;

    .medcine-wrapper {
        padding: 50px 0;

        > div {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: flex-start;
            width: 100%;
        }
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

.ghost {
    opacity: 0.5;
    background: #efefef;
}

</style>
