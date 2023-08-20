<template>
    <title>Marketing Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>Marketing Gallery</h1>
        
        <div class="grid-container">
          <ImageGridItem
          filename="swinevintagead.jpg"
          imageUrl="/scans/2001ads/swinevintagead.jpg"/>
        <ImageGridItem
          v-for="(file, index) in files"
          :key="index"
          :filename="file.name"
          :imageUrl="file.url"
        />
        <ImageGridItem filename="ism1-50.jpg" imageUrl="/scans/2001/ism1-50.jpg"/>
        <ImageGridItem filename="ism2-50.jpg" imageUrl="/scans/2001/ism2-50.jpg"/>
        <ImageGridItem filename="ism3-50.jpg" imageUrl="/scans/2001/ism3-50.jpg"/>
        <ImageGridItem filename="ism4-50.jpg" imageUrl="/scans/2001/ism4-50.jpg"/>
        <ImageGridItem filename="ism5-50.jpg" imageUrl="/scans/2001/ism5-50.jpg"/>
        <ImageGridItem filename="ism6-50.jpg" imageUrl="/scans/2001/ism6-50.jpg"/>
        <ImageGridItem filename="ism7-50.jpg" imageUrl="/scans/2001/ism7-50.jpg"/>
      </div>

      </div>
    
    </template>
    

    
    <script>
    import ImageGridItem from '~/components/ImageGridItem.vue';
    import files from '~/assets/data/galmarketing.json'

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