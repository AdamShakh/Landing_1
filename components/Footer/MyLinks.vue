<template>
    <div>
        <a  class="link-in-linkscolumn"
            v-for="(link, i) in links"
            :href="link.href"
            :key="i">
            {{link.label}}
        </a>
    </div>
</template>

<style lang="scss">
    .link-in-linkscolumn{
        margin-bottom: .3em;
        display: flex;
        color: #566B8A;
        text-decoration: none; 
        
    }
</style>


<script>
export default {
    props: {
        links: {
            type: Array,
            required: true,
        }
    }
}
</script>

