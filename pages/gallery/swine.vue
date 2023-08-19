<template>
    <title>S.W.I.N.E. Beta Screenshot Gallery - S.W.I.N.E. Mods and more</title>
    
    <div class="main">
        <h1>S.W.I.N.E. Beta Screenshot Gallery</h1>
        <p><NuxtLink to="/gallery/trail2d">Trail 2D screenshots</NuxtLink> <NuxtLink to="/gallery/trail">Trail 3D screenshots</NuxtLink></p>
        
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
            {"name":"swine_scr6.jpg","url":"/game/swinebeta/swine_scr6.jpg",},{"name":"1219swine2.jpg","url":"/game/swinebeta/1219swine2.jpg",},{"name":"1219swine3.jpg","url":"/game/swinebeta/1219swine3.jpg",},{"name":"1219swine5.jpg","url":"/game/swinebeta/1219swine5.jpg",},{"name":"1219swine6.jpg","url":"/game/swinebeta/1219swine6.jpg",},{"name":"1219swine7.jpg","url":"/game/swinebeta/1219swine7.jpg",},{"name":"1219swine8.jpg","url":"/game/swinebeta/1219swine8.jpg",},{"name":"1224045078.jpg","url":"/game/swinebeta/1224045078.jpg",},{"name":"13_s_w_i_n_e.jpg","url":"/game/swinebeta/13_s_w_i_n_e.jpg",},{"name":"14_s_w_i_n_e.jpg","url":"/game/swinebeta/14_s_w_i_n_e.jpg",},{"name":"15_s_w_i_n_e.jpg","url":"/game/swinebeta/15_s_w_i_n_e.jpg",},{"name":"16_s_w_i_n_e.jpg","url":"/game/swinebeta/16_s_w_i_n_e.jpg",},{"name":"17_s_w_i_n_e.jpg","url":"/game/swinebeta/17_s_w_i_n_e.jpg",},{"name":"18_s_w_i_n_e.jpg","url":"/game/swinebeta/18_s_w_i_n_e.jpg",},{"name":"19_s_w_i_n_e.jpg","url":"/game/swinebeta/19_s_w_i_n_e.jpg",},{"name":"20_s_w_i_n_e.jpg","url":"/game/swinebeta/20_s_w_i_n_e.jpg",},{"name":"24_s_w_i_n_e.jpg","url":"/game/swinebeta/24_s_w_i_n_e.jpg",},{"name":"26_s_w_i_n_e.jpg","url":"/game/swinebeta/26_s_w_i_n_e.jpg",},{"name":"2s_w_i_n_e.JPG","url":"/game/swinebeta/2s_w_i_n_e.JPG",},{"name":"4s_w_i_n_e.JPG","url":"/game/swinebeta/4s_w_i_n_e.JPG",},{"name":"5.jpg","url":"/game/swinebeta/5.jpg",},{"name":"5dc12cf7739b8.jpg","url":"/game/swinebeta/5dc12cf7739b8.jpg",},{"name":"6.jpg","url":"/game/swinebeta/6.jpg",},{"name":"6s_w_i_n_e.JPG","url":"/game/swinebeta/6s_w_i_n_e.JPG",},{"name":"7.jpg","url":"/game/swinebeta/7.jpg",},{"name":"8s_w_i_n_e.JPG","url":"/game/swinebeta/8s_w_i_n_e.JPG",},{"name":"9s_w_i_n_e.JPG","url":"/game/swinebeta/9s_w_i_n_e.JPG",},{"name":"a1.jpg","url":"/game/swinebeta/a1.jpg",},{"name":"a2.jpg","url":"/game/swinebeta/a2.jpg",},{"name":"a4nw.jpg","url":"/game/swinebeta/a4nw.jpg",},{"name":"AXTK6YR2QVJUBCXCYHK42SABKU.jpg","url":"/game/swinebeta/AXTK6YR2QVJUBCXCYHK42SABKU.jpg",},{"name":"b1.jpg","url":"/game/swinebeta/b1.jpg",},{"name":"b2.jpg","url":"/game/swinebeta/b2.jpg",},{"name":"b3.jpg","url":"/game/swinebeta/b3.jpg",},{"name":"b4.jpg","url":"/game/swinebeta/b4.jpg",},{"name":"b5.jpg","url":"/game/swinebeta/b5.jpg",},{"name":"b6.jpg","url":"/game/swinebeta/b6.jpg",},{"name":"c1.jpg","url":"/game/swinebeta/c1.jpg",},{"name":"c2.jpg","url":"/game/swinebeta/c2.jpg",},{"name":"c3.jpg","url":"/game/swinebeta/c3.jpg",},{"name":"c4.jpg","url":"/game/swinebeta/c4.jpg",},{"name":"CDNFIZRIZFL63EAT2NR6A256FE.jpg","url":"/game/swinebeta/CDNFIZRIZFL63EAT2NR6A256FE.jpg",},{"name":"NV7SUE2WG5KTHDVEUPOUIUU3PU.jpg","url":"/game/swinebeta/NV7SUE2WG5KTHDVEUPOUIUU3PU.jpg",},{"name":"scr573_01.jpg","url":"/game/swinebeta/scr573_01.jpg",},{"name":"scr573_02.jpg","url":"/game/swinebeta/scr573_02.jpg",},{"name":"scr573_03.jpg","url":"/game/swinebeta/scr573_03.jpg",},{"name":"scr573_04.jpg","url":"/game/swinebeta/scr573_04.jpg",},{"name":"scr573_05.jpg","url":"/game/swinebeta/scr573_05.jpg",},{"name":"scr573_06.jpg","url":"/game/swinebeta/scr573_06.jpg",},{"name":"scr573_07.jpg","url":"/game/swinebeta/scr573_07.jpg",},{"name":"scr573_08.jpg","url":"/game/swinebeta/scr573_08.jpg",},{"name":"scr573_09.jpg","url":"/game/swinebeta/scr573_09.jpg",},{"name":"scr573_10.jpg","url":"/game/swinebeta/scr573_10.jpg",},{"name":"scr573_11.jpg","url":"/game/swinebeta/scr573_11.jpg",},{"name":"scr573_13.jpg","url":"/game/swinebeta/scr573_13.jpg",},{"name":"scr573_14.jpg","url":"/game/swinebeta/scr573_14.jpg",},{"name":"scr573_18.jpg","url":"/game/swinebeta/scr573_18.jpg",},{"name":"scr573_19.jpg","url":"/game/swinebeta/scr573_19.jpg",},{"name":"scr573_20.jpg","url":"/game/swinebeta/scr573_20.jpg",},{"name":"scr573_21.jpg","url":"/game/swinebeta/scr573_21.jpg",},{"name":"scr573_22.jpg","url":"/game/swinebeta/scr573_22.jpg",},{"name":"scr573_23.jpg","url":"/game/swinebeta/scr573_23.jpg",},{"name":"scr573_24.jpg","url":"/game/swinebeta/scr573_24.jpg",},{"name":"scr573_25.jpg","url":"/game/swinebeta/scr573_25.jpg",},{"name":"scr573_28.jpg","url":"/game/swinebeta/scr573_28.jpg",},{"name":"scr573_29.jpg","url":"/game/swinebeta/scr573_29.jpg",},{"name":"scr573_31.jpg","url":"/game/swinebeta/scr573_31.jpg",},{"name":"scr573_32.jpg","url":"/game/swinebeta/scr573_32.jpg",},{"name":"scr573_33.jpg","url":"/game/swinebeta/scr573_33.jpg",},{"name":"scr573_34.jpg","url":"/game/swinebeta/scr573_34.jpg",},{"name":"scr573_35.jpg","url":"/game/swinebeta/scr573_35.jpg",},{"name":"scr573_36.jpg","url":"/game/swinebeta/scr573_36.jpg",},{"name":"scr573_38.jpg","url":"/game/swinebeta/scr573_38.jpg",},{"name":"scr573_40.jpg","url":"/game/swinebeta/scr573_40.jpg",},{"name":"screen1.jpg","url":"/game/swinebeta/screen1.jpg",},{"name":"screen3.jpg","url":"/game/swinebeta/screen3.jpg",},{"name":"screen4.jpg","url":"/game/swinebeta/screen4.jpg",},{"name":"screen5.jpg","url":"/game/swinebeta/screen5.jpg",},{"name":"screen6.jpg","url":"/game/swinebeta/screen6.jpg",},{"name":"screen7.jpg","url":"/game/swinebeta/screen7.jpg",},{"name":"screen8.jpg","url":"/game/swinebeta/screen8.jpg",},{"name":"swinescr22.jpg","url":"/game/swinebeta/swinescr22.jpg",},{"name":"swinescr24.jpg","url":"/game/swinebeta/swinescr24.jpg",},{"name":"swinescr25.jpg","url":"/game/swinebeta/swinescr25.jpg",},{"name":"swinescr26.jpg","url":"/game/swinebeta/swinescr26.jpg",},{"name":"swinescr27.jpg","url":"/game/swinebeta/swinescr27.jpg",},{"name":"swinescr28.jpg","url":"/game/swinebeta/swinescr28.jpg",},{"name":"swinescr29.jpg","url":"/game/swinebeta/swinescr29.jpg",},{"name":"swinescr30.jpg","url":"/game/swinebeta/swinescr30.jpg",},{"name":"swinescr31.jpg","url":"/game/swinebeta/swinescr31.jpg",},{"name":"swinescr32.jpg","url":"/game/swinebeta/swinescr32.jpg",},{"name":"swine_scr1.jpg","url":"/game/swinebeta/swine_scr1.jpg",},{"name":"swine_scr10.jpg","url":"/game/swinebeta/swine_scr10.jpg",},{"name":"swine_scr11.jpg","url":"/game/swinebeta/swine_scr11.jpg",},{"name":"swine_scr12.jpg","url":"/game/swinebeta/swine_scr12.jpg",},{"name":"swine_scr16.jpg","url":"/game/swinebeta/swine_scr16.jpg",},{"name":"swine_scr17.jpg","url":"/game/swinebeta/swine_scr17.jpg",},{"name":"swine_scr18.jpg","url":"/game/swinebeta/swine_scr18.jpg",},{"name":"swine_scr19.jpg","url":"/game/swinebeta/swine_scr19.jpg",},{"name":"swine_scr2.jpg","url":"/game/swinebeta/swine_scr2.jpg",},{"name":"swine_scr20.jpg","url":"/game/swinebeta/swine_scr20.jpg",},{"name":"swine_scr21.jpg","url":"/game/swinebeta/swine_scr21.jpg",},{"name":"swine_scr3.jpg","url":"/game/swinebeta/swine_scr3.jpg",},{"name":"swine_scr4.jpg","url":"/game/swinebeta/swine_scr4.jpg",},{"name":"swine_scr5.jpg","url":"/game/swinebeta/swine_scr5.jpg",},{"name":"swine_scr8.jpg","url":"/game/swinebeta/swine_scr8.jpg",},{"name":"swine_scr9.jpg","url":"/game/swinebeta/swine_scr9.jpg",}
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
    