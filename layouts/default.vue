<template>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    

    <Billboard/>
    <div style="background-color: #FF2C2C;padding:15px;text-align:center;">
       


    <h1>S.W.I.N.E. Mods & cool things</h1>
    </div>
    <div style="overflow:auto">

    <div class="menu">
    <h2></h2>
    <NuxtLink to="/download">Downloads</NuxtLink>
    <a href="https://bads-tm.itch.io/swine-classic-hd">Itch.io</a>
    <a href="https://github.com/hdbeefup/swine">Source code</a>
    <a href="https://mega.nz/folder/YzpykQgb#1WoEgxecbW7zrNYpe2sGZw">MEGA.NZ (project folder)</a>
    <a href="https://u.pcloud.link/publink/show?code=XZyVBMXZmT4WJ0SwQFhdLG6yffbVaVGRGFJ7">PCLOUD (POC build only)</a>
    </div>

    <div class="main">
    <slot/>
    </div>
    <div class="right">
    <h2>NOTE: This is a Just for fun project made when having spare time.</h2>
    <p>If there's demand, or a enough of a reason, it could become better than Kite Games HD remaster</p>
    </div>
    </div>
    <div style="background-color: #111;text-align:center;padding:10px;margin-top:7px;">
        <div v-html="copyright"></div>
    </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const currentYear = ref(new Date().getFullYear());

const copyright = ref("");

onMounted(() => {
    const yearSpan = `<span id="currentYear">${currentYear.value}</span>`;
    copyright.value = `© ${yearSpan} bads.tm`;
});
</script>

<style setup>
    body {font-family:monospace;color: #fff;background-color: #000;margin: 0;}
    *{box-sizing:border-box;}
    .menu{float:left;width:20%;text-align:center;}
    .menu a{background-color:#111;padding:8px;margin-top:7px;display:block;width:100%;color:#fff;}
    .main{float:left;width:60%;padding:0 20px;}
    .right{background-color:#111;float:left;width:20%;padding:15px;margin-top:7px;text-align:center;}
    @media only screen and (max-width:620px){
    .menu,.main,.right{width:100%;}
    }
    ::selection{background:#00bcbf;}
    ::-moz-selection{background:#00bcbf;}
    ::-webkit-scrollbar{width:15px;}
    ::-webkit-scrollbar-thumb,::-webkit-scrollbar-track{background-clip:padding-box;border-radius:30px;border-style:solid;border-width:3px;}
    ::-webkit-scrollbar-thumb{background-color:rgba(0,0,0,.4);border-color:transparent;}
    ::-webkit-scrollbar-track{background-color:transparent;border-color:transparent;}
    body::-webkit-scrollbar-thumb{background-color:rgba(255,255,255,.4);border-color:transparent;}
    
    </style>