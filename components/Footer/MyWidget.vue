<template>
    <div class="widget-root" :style="widthProp">
        <div class="title-container">
            <slot name="mytitle">
                {{title}}
            </slot> 
        </div>
        <div class="description-container">
            <slot>
                {{description}}
            </slot> 
        </div>
        
    </div>
</template>

<style lang="scss">
    .widget-root{
        width: 35%; 
        margin-right: 5em;
        margin-top: 5em;
    }
    .title-container{
        color: white;
    }
    .description-container{
        margin-top: 2em;
    }
</style>


<script>
export default {
    props:{
        title: {
            type: String,
            default: ''
        },
        description: {
            type: String,
            default: ''
        },
        width:{
            default: '34%',
        }
    },
    computed:{
        widthProp(){
            return 'width: ' + this.width + ';'
        }
    },
}
</script>