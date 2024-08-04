<template>
    <div class="prescription" v-if="show">
        <h1>中药处方单</h1>
        <p>
            <span>剂数：{{ data?.dose }}</span> | <span>费用：{{ data?.total }}元</span>
        </p>
        <div class="list">
           <div v-for="m of data.medicineList" :key="m.id" class="item">
               <h3>{{ m.name }}</h3>
               <p>{{ m.total }}g</p>
           </div>
        </div>
    </div>
</template>

<script setup>
const props = defineProps({
    show: {
        type: Boolean,
        default: false
    },
    data: Object
})

console.log(props.data);
</script>

<style lang="scss" scoped>
.prescription {
    border-top: 1px solid #ededed;

    .list {
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        flex-wrap: wrap;

        .item {
            display: flex;
            justify-content: space-between;
            width: 25%;
            padding: 0 10px;
            box-sizing: border-box;
            border: 1px solid #ededed;
        }
    }
}
</style>