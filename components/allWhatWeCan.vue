<template>
    <div class="allWeCan-root">
        <div class="allWeCan-header">
            <div class="header-text">
                Pursue pleasure rationally encounter 
            </div>
            <div>
                Nor again is there anyone who loves or pursues or desires to obtain pain of itself, 
                because it is pain, but because occasionally circumstances occur.
            </div>
        </div>

        <img class="allWeCan-img" src="@/static/allOurSides.svg" alt="allOurSides">

        <div class="allWeCan-3things-block">
            <div class="allWeCan-thing" v-for="thing in three_things" :key="thing">
                {{thing}}
            </div>
        </div>
        
        <div class="allWeCan-register-account-button">
            <span class="button-text">
                Register a free account and start trading now!
            </span>
            <span class="decsription-info">
                Sign up takes less than 30 seconds and requires no personal information.
                Trade in minutes; deposits only require 1 confirmation.
            </span>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            three_things: [
                `But I must explain to you how all this mistaken idea of denouncing 
                pleasure and praising pain was born.`,

                `But I must explain to you how all this mistaken idea of denouncing 
                pleasure and praising pain was born and I will give you a complete account of the system.`,
                
                `But I must explain to you how all this mistaken idea of denouncing 
                pleasure and praising pain was born and I will.`
            ]
        }
    }
}
</script>

<style lang="scss" scoped> //scoped чтоб не пересекались
.allWeCan-root{
    margin-top: 5em;
    margin-bottom: 2em;

    display: flex;
    flex-direction: column;
    align-items: center;
}

.allWeCan-header{
    width: 600px;
    // margin-left: auto;  ///// 333 костыль
    // margin-right: 24em; /////
    text-align: center;    
}
.allWeCan-img{
    margin-top: 4em;
    margin-bottom: 4em;
    width: 100%;
}
.allWeCan-3things-block{
    display: flex;
    justify-content: space-around;
    margin-left: 12em;
    margin-right: 12em;

    .allWeCan-thing{
        width: 27%;
        text-align: center;
    }
}
.allWeCan-register-account-button{
    margin-top: 6em;
    padding: 1.5em 2em;

    width: 75%;

    display: flex;
    flex-direction: column; 
    text-align: center;

    background-image: url(/registerForFreeButton.svg);
    background-repeat: no-repeat;
    background-position: center;
    .button-text{
        color: white; 
        font-size: 1.5em; 
        margin-bottom: .5em;
    }
    .decsription-info{
        font-size: 85%;
        color: rgb(149, 172, 207);
    }

    &:hover {
        color: yellow;  // не робит
        cursor: pointer;
        .button-text{
            color: rgb(155, 245, 11);
        }
    }
}
</style>
 
