<template>
    <div class="medicine-message">
        <div class="inner">
            <span class="icon icon-times" @click="close">&times</span>
            <div>
                <h1>{{ data.name }}</h1>
                <p>别名：{{ data.alias }}</p>
                <p>大类：{{ data.medicineCatetory.name }}</p>
                <p>子类：{{ data.medicineSubcatetory ? data.medicineSubcatetory.name : '无' }}</p>
                <p>属性：{{ data.medicineCharacter.name }}</p>
                <p>药味：{{ data.medicineTastings }}</p>
                <p>归经：{{ data.medicineAttributions }}</p>
                <p>功效：{{ data.effect }}</p>
            </div>
        </div>
    </div>
</template>

<script setup>
const props = defineProps({
    data: Object,
    close: Function
});

</script>

<style lang="scss" scoped>
.medicine-message {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    background-color: rgba(0, 0, 0, .5);

    .inner {
        position: absolute;
        left: 50%;
        z-index: 999;
        margin-left: -250px;
        margin-top: 50px; 
        width: 500px;
        background-color: #fff;
        padding: 30px;
        box-sizing: border-box;
        cursor: pointer;

        h1 {
            font-weight: normal;
        }

        .icon {
            position: absolute;
            top: 5px;
            right: 10px;

            &.icon-times {
                font-size: 18px;
            }
        }
        
    }
}
</style>