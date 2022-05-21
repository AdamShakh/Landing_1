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
        
        <div class="allWeCan-register-account-button" @click="$modal.show('register-acc-form');">
            <span class="button-text">
                Register a free account and start trading now!
            </span>
            <span class="decsription-info">
                Sign up takes less than 30 seconds and requires no personal information.
                Trade in minutes; deposits only require 1 confirmation.
            </span>
        </div>

        <modal name='register-acc-form' height="440px">
            <div class="register-form-cont">
                <div class="header">Register new account:</div>
                <div class="input-fields-cont">
                    <div class='input-fields'>Name:<input type="text" v-model="name"></div>
                    <div class='input-fields'>Email:<input type="text" v-model="email"></div>
                    <div class='input-fields'>Telephone:<input type="text" v-model="telephone"></div>
                </div>
                <div class="send-button" @click="createAccount()">Create new account</div>
            </div>
        </modal>

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
            ],
            name: '',
            email: '',
            telephone: '',
        }
    },
    methods:{
        createAccount (){
            this.$modal.hide('register-acc-form')
            // send to server
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

.register-form-cont{
    padding: 2em;
    height: 100%;

    display: flex;
    align-items: center;
    flex-direction: column;

    background-color: rgb(8, 16, 27); //#242424;

    .header{
        color: white;
        font-size: 1.5em;
        margin-bottom: 1em;
        margin-top: 1em;
    }
    .input-fields-cont{
        margin-bottom: 3em;
        width: 350px;

        .input-fields{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 1em;
            input{
                width: 250px;
                height: 30px;
                padding-left: .5em;
                padding-right: .5em;
            }
        }
    }
    .send-button{
        padding: 1em 2em;
        font-weight: 700;
        width: 12em;
        text-align: center;
        color: white;
        background-image: url(/trytrading.svg);
        background-repeat: no-repeat;
        background-size: 100%;
        background-position: center;
        &:hover {
            color: rgb(66, 245, 11);
            cursor: pointer;
        }
    }
}
</style>
 
