<template>
    <title>S.W.I.N.E. Beta Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>List of Files</h1>
      
      
      </div>
    
    </template>


<script>
import fs from 'node:fs'
var files = fs.readdirSync('./public/game/swinebeta');

files.forEach(function(file) {
  console.log(file);
})

</script>

<style>
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 10px;
}
</style>