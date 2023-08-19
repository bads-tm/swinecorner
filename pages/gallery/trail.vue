<template>
    <title>Trail 3D Screenshot Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>Trail 3D Screenshot Gallery</h1>
        <p><NuxtLink to="/gallery/trail2d">Trail 2D screenshots</NuxtLink> <NuxtLink to="/gallery/swine">S.W.I.N.E. Beta screenshots</NuxtLink></p>

        
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
    //const fs = require('fs');

export async function fetchFilesFromDirectory(directory) {
  try {
    const fileList = fs.readdirSync(directory);
    return fileList;
  } catch (error) {
    console.log('Error fetching files: ', error);
    return [];
  }
}

    import ImageGridItem from '~/components/ImageGridItem.vue';
    
    export default {
      components: {
        ImageGridItem,
      },
      data() {
        return {
          files: [{"name":"1000274400_315633_1533318138_sumario_normal.jpg","url":"/game/trail3d/1000274400_315633_1533318138_sumario_normal.jpg",},{"name":"10_s_w_i_n_e.jpg","url":"/game/trail3d/10_s_w_i_n_e.jpg",},{"name":"11_s_w_i_n_e.jpg","url":"/game/trail3d/11_s_w_i_n_e.jpg",},{"name":"12_s_w_i_n_e.jpg","url":"/game/trail3d/12_s_w_i_n_e.jpg",},{"name":"8596Swine_screen01.jpg","url":"/game/trail3d/8596Swine_screen01.jpg",},{"name":"8596Swine_screen02.jpg","url":"/game/trail3d/8596Swine_screen02.jpg",},{"name":"8596Swine_screen03.jpg","url":"/game/trail3d/8596Swine_screen03.jpg",},{"name":"scr573_37.jpg","url":"/game/trail3d/scr573_37.jpg",},{"name":"trail-salepitch.png","url":"/game/trail3d/trail-salepitch.png",},{"name":"trailbattle.png","url":"/game/trail3d/trailbattle.png",},{"name":"trailcover.png","url":"/game/trail3d/trailcover.png",},{"name":"trailcover2.png","url":"/game/trail3d/trailcover2.png",},{"name":"trailHQ.png","url":"/game/trail3d/trailHQ.png",},{"name":"traillakepatched800x600.png","url":"/game/trail3d/traillakepatched800x600.png",},{"name":"traillakepatchedMAX.png","url":"/game/trail3d/traillakepatchedMAX.png",},{"name":"traillogo.png","url":"/game/trail3d/traillogo.png",},{"name":"trailswim2.png","url":"/game/trail3d/trailswim2.png",}
        ] ,
        };
      },
      async asyncData({ params }) {
        // Fetch file information and URLs from your directory
        const files = await fetchFilesFromDirectory("./public/game/swinebeta");
    
        return { files };
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
    