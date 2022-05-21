<template>
    <div class="footer-root">
        <div style="width: 35%; margin-right: 5em;">
            <div style="display: flex;">
                <img src="/logo_mini.svg" alt="logo">
                <div style="color: white; font-size: 1.6em; margin-left: 20px;">Bitreon</div>
            </div>
            <div>
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
        </div>
 
        <div style="margin-right: 5em;"  v-for="(column, i) in columns" :key="i">
            <div class="footer-links-header">{{column.Name}}</div>
            <div style="margin-bottom: .3em;" v-for="(link, i) in column.Links" :key="i">
                <a class="link-text" :href="link.href" target="_blank"><p>{{link.label}}</p></a>
            </div>
        </div>
    </div>
</template>

<style lang="scss">
.footer-root{
    padding: 3em;
    padding-top: 10em;

    display: flex;
    justify-content: flex-start;
}
.footer-links-header{
    color: white;
    font-size: 1em;
    margin-bottom: 2em;
}
.link-text{
    color: #566B8A;
    text-decoration: none;  
    p {
        margin: 0em;
    }
    &:hover {
        color: rgba(7, 247, 135, 0.829);
        cursor: pointer;
    } 
}
</style>

<script>
export default {
    data(){
        return{
            columns:[
                {
                    Name: "About",
                    Links: [
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
                    Name: "Data",
                    Links: [
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
                    Name: "References",
                    Links: [
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
                    Name: "Social",
                    Links: [
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
            ],
        }
    }
}
</script>
