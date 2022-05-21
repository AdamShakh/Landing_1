<template>
    <div id="app">
        <h4>{{ info }}</h4>
        
        ______
        <h1>{{ usd['code'] }}</h1>

        <p>{{ usd['symbol'] }}</p>
        
        <h2>{{ usd['rate'] }}</h2>
        <p>{{ usd['rate_float'] }}</p>
        ______
    </div>
</template>

<script>
import Vue from 'vue'
import axios from 'axios'

// global.Vue = new Vue({
//     el: '#app',
//     data() {
//         return {
//             info: null
//         };
//     },
//     mounted() {
//         axios.get('https://api.coindesk.com/v1/bpi/currentprice.json').then(response => (this.info = response));
//     }
// });

export default {
    data() {
        return {
            info: null
        };
    },
    mounted() {
        axios.get('https://api.coindesk.com/v1/bpi/currentprice.json')
        .then(response => (this.info = response));
    },
    computed:{
        usd(){
            if (this.info != null) { 
                return this.info['data']['bpi']['USD']
            }
            return 'null'
        }
    }
}
</script>