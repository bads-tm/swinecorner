<template>
  <title>Downloads Other - S.W.I.N.E. Mods and more</title>
  <div class="main">

      <div class="dlcontainer" v-for="item in files" :key="item.title">
        <div class="image">
          <img :src="item.image" alt="Image">
        </div>
        <div class="details">
          <div class="title">
            {{ item.title }}
            <span class="author">by {{ item.author }}</span>
          </div>
          <div class="description">
            {{item.desc}}
          </div>
        </div>
        <div v-if="item.dlurl" class="download-button">
          <NuxtLink :to="item.dlurl">Download</NuxtLink>
        </div>
        <div v-if="item.dlurl2" class="download-button dl2">
          <NuxtLink :to="item.dlurl2">Download</NuxtLink>
        </div>
        <div v-if="item.readmore" class="download-button dl2">
          <NuxtLink :to="item.readmore">More info</NuxtLink>
        </div>
</div>
  
</div>
  
  <div class="right">
      <h2>Warning: Third party content</h2>
      <p>Watch out for potential viruses, trojans.</p>
  </div>
  
  
    </template>
    
    <script>
    import files from '~/assets/data/dlother.json'
  
        export default {
        data() {
            return { files }
        },
        };
        </script>
        
        <style scoped>
  .links-list,
  .sub-links-list {
    list-style: none;
    padding-left: 0;
  }
  
  .links-list a,
  .sub-links-list a {
    color: white;
    font-size: 20px;
  }
  
  .links-list .archived a {
      font-size: 5px;
  }
  
  .sub-links-list {
    margin-left: 20px;
  }
  </style>
  <style>
   .dlcontainer {
    display: flex;
    align-items: center;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
  }

  .image {
    flex: 1;
    max-width: 300px;
    margin-right: 20px;
  }

  .image img {
    max-width: 100%;
    height: auto;
    display: block;
  }

  .details {
    flex: 8;
  }

  .title {
    font-size: 24px;
    font-weight: bold;
  }

  .author {
    font-size: 14px;
    display: block;
    margin-top: 5px;
  }

  .description {
    margin-top: 10px;
    font-size: 16px;
  }

  .download-button {
    flex: 1;
    display: flex;
    justify-content: flex-end;
    align-items: flex-end;
    margin: 3px;
  }

  .download-button a {
    padding: 10px 20px;
    background-color: #0f8e35;
    background-image: linear-gradient(#26D953, #177E44);
    color: #fff;
    border: none;
    cursor: pointer;
  }
  .dl2 a {
    padding: 10px 20px;
    background-color: #135327;
    background-image: linear-gradient(#1b3020, #044b23);
    color: #fff;
    border: none;
    cursor: pointer;
  }
  .download-button a:visited {
    color: #fff;
  }
  </style>
  