<template>
    <div class="medicine-select" :style="{ display: isListShow ? '' : 'none' }">
        <div
                v-for="(m, i) of medicineList"
                :class="['option', activeIndex === i ? 'active' : '']"
                :key="m.id"
                @click="selectMedicine(m)"

        >{{ m.name }}
        </div>
    </div>
</template>

<script setup lang="ts">
const props = defineProps({
    isListShow: Boolean,
    medicineList: Array,
    activeIndex: Number
});

const emit = defineEmits(['select-medicine'])

const selectMedicine = (m) => {
    emit('select-medicine', m);
}
</script>

<style lang="scss" scoped>
.medicine-select {
    position: absolute;
    left: 0;
    top: 50px;
    z-index: 1;
    width: 130px;
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
</style>