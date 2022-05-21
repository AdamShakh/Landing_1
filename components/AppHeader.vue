<template>
<div class="header-root">

    <div class="header-top">
        <img class="project-logo" src="/logo.svg" alt="лого">
        <div class="header-buttons">
            <div class="header-button">
                Language
            </div>
            <div class="header-button">
                About
            </div>
            <div class="header-button">
                Sign in
            </div>
            <div class="login-button" @click="$modal.show('sign-up-form');">
                Sign up
            </div>
        </div>
    </div>

    <div class="header-center">
        <div class="header-text">
            But I must explain to you how all this mistaken idea of denouncing.
        </div>
        <div class="header-description">
            No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, 
            but because those who do not know how to pursue pleasure rationally encounter 
            consequences that are extremely painful. 
        </div>
        <div class="header-try-button" @click="$modal.show('try-trading-form');">
            Try simulated trading
        </div>
    </div>

    <div class="header-bottom-labels">
        <div class="header-bottom-button">
            $ 64.3 billion <span>per month</span>
        </div>
         <div class="header-bottom-button">
            $ 985.32 billion <span>per year</span>
        </div>
        <div class="header-bottom-button">
            $ 6.09 billion <span>per day</span>
        </div>
    </div>

    <!-- vue-js-modal -->
    <modal name='sign-up-form' height="440px">
        <div class="try-trading">
            <div class="header">Register new account:</div>
            <div class="input-fields-cont">
                <div class='input-fields'>Name:<input type="text" v-model="name"></div>
                <div class='input-fields'>Email:<input type="text" v-model="email"></div>
                <div class='input-fields'>Telephone:<input type="text" v-model="telephone"></div>
            </div>
            <div class="send-button" @click="createAccount()">Create new account</div>
        </div>
    </modal>

    <modal name="try-trading-form" height="440px">
        <div class="try-trading">
            <div class="header">Apply for a trading:</div>
            <div class="input-fields-cont">
                <div class='input-fields'>Name:<input type="text" v-model="name"></div>
                <div class='input-fields'>Email:<input type="text" v-model="email"></div>
                <div class='input-fields'>Telephone:<input type="text" v-model="telephone"></div>
            </div>
            <div class="send-button" @click="apply_request()">Send</div>
        </div>
    </modal>

</div> 
</template>

<script>
export default {
    data(){
        return{
            name: '',
            email: '',
            telephone: '',
        }
        
    },
    methods: {
        apply_request (){
            this.$modal.hide('try-trading-form')
            // send to server
        },
        createAccount(){
            this.$modal.hide('sign-up-form')
            // send to server
        }
    }
}
</script>

                                
<style lang="scss" scoped>              // screen на print - если идёт на печать , другой layout
                                        // break point       media quires
@media screen and (max-width: 992px) {  // если условие выполняется , то выпонятся стиль
    .project-logo{
        animation-name: spin;
        animation-duration: 500ms;
        animation-iteration-count: infinite;
        animation-timing-function: linear;
    }
}
@keyframes spin {
    from {
        transform: rotate(0deg)
    }
    to {
        transform: rotate(360deg)
    }
}

.modal-request{
    border: 1px solid #3b61d3;
    border-radius: 1000px;
}

.header-root{
    min-height: 140vh;
    background-image: url(/bgheader.svg);
    background-position: right top;
    background-size: 100% 100%;
    background-repeat: no-repeat;
    position: relative;
}
.header-top{
    display: flex;
    justify-content: space-between;
    align-items: center;

    img.project-logo, div.header-buttons {
        padding: 2em;
    }
    img.project-logo {
        height: 3em;
    }
    .header-buttons{
        display: flex;
        justify-content: space-between;
        align-items: center;

        .header-button{
            font-weight: 300;
            padding: 1em 3.5em;
            color: white;
            &:hover {
                color: rgb(66, 245, 11);
                cursor: pointer;
                text-decoration: underline;
            }
        }
    }
    .login-button{
        background-image: url(/login.svg);
        background-repeat: no-repeat;
        background-position: center;
        padding: 1em 1.5em;
        color: white;

        &:hover {
            color: rgb(155, 245, 11);
            cursor: pointer;
        }        
    }
    // .login-button:hover {

    // }
}
.header-center {
    max-width: 400px;
    display: flex;
    flex-direction: column;
    margin-left: 6em;
    margin-top: 9em;
    // .header-slogan {  // header-text  в index
    //     font-size: 1.6em;
    //     color: white;
    // }
    .header-description {
        margin-top: 1em;
    }
    .header-try-button{
        margin-top: 2em;
        padding: 1em 2em;
        font-weight: 500;
        font-size: 1.1em;
        width: 12em;
        text-align: center;
        color: white;
        background-image: url(/trytrading.svg);
        background-repeat: no-repeat;
        background-size: 100%;
        background-position: center;
        &:hover {
            color: rgb(155, 245, 11);
            cursor: pointer;
        }
    }
}
.header-bottom-labels{
    display: flex;
    justify-content: center;
    align-items: center;

    color: white;

    position: absolute;
    bottom: 50px;
    width: 100%;
    // left: 0;

    .header-bottom-button{
        background-color: #0B5B89;
        padding: .7em .9em;
        margin: .5em;
        font-size: 2em;
        span {
            font-size: .5em;
            color: #87A6D4;
            font-family: 'Roboto';
        }
        &:hover {
            color: rgb(155, 245, 11);
            cursor: pointer;
        }
    }
}
.try-trading{
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

