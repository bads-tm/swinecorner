<template>
    <title>Characters Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>Characters Gallery</h1>
        
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
    import files from '~/assets/data/galchars.json'

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
    @import url("~/assets/css/gallery.css");
    </style>
    