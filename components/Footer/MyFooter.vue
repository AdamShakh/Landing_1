<template>
    <div class="my-footer-root">
        <my-widget title="Bitreon" width='50%' style="margin-left: 6em; margin-top: 1.5em;">
            <div slot="mytitle">
                <img src="/logo_mini.svg" alt="">
                <span>Bitreon</span>
            </div>
            <div class="description-wrapper">
                But I must explain to you how all this mistaken 
                idea of denouncing pleasure and praising pain was born 
                and I will give you a complete account of the system, 
                and expound the actual teachings of the great explorer 
                of the truth, the master-builder of human happiness. 
                No one rejects, dislikes, or avoids pleasure itself, 
                because it is pleasure, but because those who do not 
                know how to pursue pleasure rationally encounter 
                consequences that are extremely painful. 
            </div>
        </my-widget>
        <my-widget :title="link.title" v-for="(link, i) in links" :key="i">
            <my-links :links="link.urls"></my-links>
        </my-widget>
    </div>
</template>
<style>
.my-footer-root{
    display: flex;
    align-items: flex-start;
}
.description-wrapper{
    max-width: 200px;
}
</style>

<script>
import MyWidget from '@/components/Footer/MyWidget'
import MyLinks from '@/components/Footer/MyLinks'
export default {
    data(){
        return {
            links:[
                {
                    title: 'About',
                    urls: [
                        {
                            label: "About the Team",
                            href: "https://google.com"
                        },
                        {
                            label: "Affiliate Program",
                            href: "https://google.com"
                        },
                        {
                            label: "Careers ",
                            href: "https://google.com"
                        },
                        {
                            label: "Privacy Policy",
                            href: "https://google.com"
                        },
                        {
                            label: "Security",
                            href: "https://google.com"
                        },
                        {
                            label: "Terms of Service",
                            href: "https://google.com"
                        }
                    ]
                },
                {
                    title: 'Data',
                    urls: [
                        {
                            label: "Fees",
                            href: "https://yandex.com"
                        },
                        {
                            label: "Bitcoin / USD",
                            href: "https://yandex.com"
                        },
                        {
                            label: "Ethereum Futures",
                            href: "https://yandex.com"
                        },
                    ],
                },
                {
                    title: 'References',
                    urls: [
                        {
                            label: "API",
                            href: "https://yahoo.com"
                        },
                        {
                            label: "FAQ",
                            href: "https://yahoo.com"
                        },
                        {
                            label: "Futures Guide",
                            href: "https://yahoo.com"
                        },
                        {
                            label: "Perpetuals Guide",
                            href: "https://yahoo.com"
                        },
                        {
                            label: "Trading on",
                            href: "https://yahoo.com"
                        },
                    ],
                },
                {
                    title: 'Scoail',
                    urls: [
                        {
                            label: "Blog",
                            href: "https://reddit.com"
                        },
                        {
                            label: "IRC",
                            href: "https://reddit.com"
                        },
                        {
                            label: "Reddit",
                            href: "https://reddit.com"
                        },
                        {
                            label: "Twitter",
                            href: "https://reddit.com"
                        },
                    ]
                },
            ]
        }
    },
    components: {
        MyWidget,
        MyLinks,
    }
}
</script>
