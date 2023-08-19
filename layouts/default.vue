<template>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    

    <Billboard/>
    <div style="background-color: #D93526;background-image: linear-gradient(#D93526, #7E2017);padding:15px;text-align:center;">
       


    <h1><img src="~/assets/img/hd.png" style="height: 36px;padding: 4px;align-content: center;vertical-align: middle;" />S.W.I.N.E. Mods & cool things</h1>
    </div>
    <div style="overflow:auto"> <sidebar/>
    <slot/>
    
    </div>
    <div style="background-color: #111;text-align:center;padding:10px;margin-top:7px;">
    &copy; <span id="currentYear">{{ currentYear }}</span> bads.tm
    </div>
</template>

<script setup>
const currentYear = ref(new Date().getFullYear());
</script>

<style setup>
    body {font-family:monospace;color: #fff;background-color: #000;margin: 0;}
    *{box-sizing:border-box;}
    .menu{float:left;width:20%;text-align:center;}
    .menu a{background-color:#111;padding:8px;margin-top:7px;display:block;width:100%;color:#fff;}
    a:visited {color: rgb(189, 179, 180);}
    .main{float:left;width:60%;padding:0 20px;}
    .right{background-color:#111;float:left;width:20%;padding:15px;margin-top:7px;text-align:center;}
    @media only screen and (max-width:620px){
    .menu,.main,.right{width:100%;}
    }
    ::selection{background:#7E2017;}
    ::-moz-selection{background:#7E2017;}
    ::-webkit-scrollbar{width:15px;}
    ::-webkit-scrollbar-thumb,::-webkit-scrollbar-track{background-clip:padding-box;border-radius:30px;border-style:solid;border-width:3px;}
    ::-webkit-scrollbar-thumb{background-color:rgba(0,0,0,.4);border-color:transparent;}
    ::-webkit-scrollbar-track{background-color:transparent;border-color:transparent;}
    body::-webkit-scrollbar-thumb{background-color:rgba(255,255,255,.4);border-color:transparent;}
    
    </style>