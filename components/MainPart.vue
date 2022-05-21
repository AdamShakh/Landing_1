<template>
    <div class="MainPart-root">
        <div class="content-block" v-for="c in content" :key="c">
            <div class="header-text">
                {{c.title}}
            </div>
            <div>
                {{c.description}}
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            content: [
                {
                title: "Nor again is there anyone who loves",
                description: `But I must explain to you how all this 
                                mistaken idea of denouncing pleasure and praising pain was born 
                                and I will give you a complete account of the system.`
                },
                {
                title: "But who has any right ",
                description: `To find fault with a man who chooses to enjoy a pleasure that has no 
                                annoying consequences, or one who avoids a pain that produces no 
                                resultant pleasure?`
                },
                {
                title: "Nor again is there anyone who loves",
                description: `But I must explain to you how all this mistaken idea of denouncing 
                                pleasure and praising pain was born and I will give you a complete 
                                account of the system.`
                }
            ], 
        }
    }
}
</script>

<style lang="scss">
.MainPart-root{
    margin-top: 5em;
    height: 600px;
 
    background-image: url(/MainPartBG.svg);
    background-position: left bottom;
    background-repeat: no-repeat;
    background-size: 65%; /* 65%; */
}
.content-block{
    width: 40%; 
    margin-bottom: 5em;
    // clear: both;
    // float: right;

    margin-left: auto;
    margin-right: 7em;
    // ---- вместо этого 
    //      в MainPart-root
    // display: flex;
    // flex-direction: column;
    // align-items: flex-end;
    // padding-right: 7em;
    // и width: 40%; на width: 540px;   
        //не % ибо padding-right больше 0 изменяет размер этих 40% 
}
</style>
