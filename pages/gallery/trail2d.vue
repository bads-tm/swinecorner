<template>
    <title>Trail 2D Screenshot Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>Trail 2D Screenshot Gallery</h1>
        <p><NuxtLink to="/gallery/trail">Trail 3D screenshots</NuxtLink> <NuxtLink to="/gallery/swine">S.W.I.N.E. Beta screenshots</NuxtLink></p>

        
        <div class="grid-container">
        <ImageGridItem
          v-for="(file, index) in files"
          :key="index"
          :filename="file.name"
          :imageUrl="file.url"
        />
      </div>

      </div>
    
    </template>
    

    
    <script>
    import ImageGridItem from '~/components/ImageGridItem.vue';
    import files from '~/assets/data/galtrail2d.json'

    export default {
      components: {
        ImageGridItem,
      },
      data() {
          return { files }
      },
    };
    </script>
    
    <style>
    .grid-container {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 10px;
    }
    </style>
    