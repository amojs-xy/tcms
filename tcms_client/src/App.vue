

<template>
  <div class="container">
      <medicine-board v-for="m of medicineList" :key="m.id" @send-data="receiveData" />
  </div>
</template>

<script setup lang="ts">

import MedicineBoard from "./components/MedicineBoard.vue";
import {ref} from "vue";

const  medicineList = ref([{ id: 0 }])

const receiveData = (medicineInfo) => {
    medicineList.value = medicineList.value.map((m, i) => {
        if (m.id === medicineInfo.id) {
            medicineList.value[i] = medicineInfo;
        }

        return m;
    });

    medicineList.value.push({ id: 0 })
}

</script>

<style lang="scss" scoped>
.container {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: flex-start;
    width: 950px;
    margin: 0 auto;
}

</style>
