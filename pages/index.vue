<template>
  <div class="index-root">
    <app-header></app-header>
    <main-part></main-part>
    <all-what-we-can></all-what-we-can>
    <my-footer></my-footer>
    <!-- <app-footer></app-footer> -->
  </div>
</template>

<script>
import AppHeader from '@/components/AppHeader.vue'
import MainPart from '@/components/MainPart.vue'
import AllWhatWeCan from '@/components/AallWhatWeCan.vue'
import myFooter from '@/components/Footer.vue'
import appFooter from '@/components/Footer/MyFooter.vue'

export default {
  components: {
    AppHeader, MainPart, AllWhatWeCan, myFooter, appFooter
  },
}
</script>

<style>
.index-root{
  background-color: #11233D; 
  
  line-height: 1.5;
  color: #566B8A;
  font-family: 'Roboto';
  font-weight: normal;
}

.header-text{
  color: white;
  font-size: 1.5em;
  margin-bottom: .5em;
}
</style>
