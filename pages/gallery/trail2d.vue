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
    
    export default {
      components: {
        ImageGridItem,
      },
      data() {
        return {
          files: [
        { name: 'tr2dgrs.png', url: '/game/trail2d/tr2dgrs.png' },
        { name: 'tr2dhq.png', url: '/game/trail2d/tr2dhq.png' },
        { name: 'tr2dwinspawn.png', url: '/game/trail2d/tr2dwinspawn.png' },
        { name: 'tr2dwintr.png', url: '/game/trail2d/tr2dwintr.png' },
        { name: 'tr2dwintr2.png', url: '/game/trail2d/tr2dwintr2.png' },
        { name: 'trailalpha.png', url: '/game/trail2d/trailalpha.png' },
      ],
        };
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
    