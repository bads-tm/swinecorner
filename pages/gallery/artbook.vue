<template>
    <div id="comic-container">
      <video class="comic-image" ref="vid">
        <source :src="videoSource" type="video/webm">
      </video>
      <div id="comic-controls">
        <button @click="prev" id="prev-button">Prev</button>
        <span id="pgnumber">{{ currentPage }}/{{ totalPages }}</span>
        <button @click="next" id="next-button">Next</button>
      </div>
    </div>
  </template>
  
  <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: sans-serif;
            background-color: #1c1c1c;
            color: #fff;
        }
        
		#comic-container {
		  display: flex;
		  flex-direction: column;
		  justify-content: center;
		  align-items: center;
		  height: 100vh;
		  max-height: 100%;
		  overflow: hidden;
		}

        
		.comic-image {
		  max-width: 100%;
		  max-height: calc(100% - 60px); /* subtract the height of the controls */
		  margin: auto;
		}

		#comic-controls {
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		  width: 100%;
		  height: 60px;
		  padding: 0 20px;
		  box-sizing: border-box;
		}
        
        #comic-controls button {
            background-color: #fff;
            color: #1c1c1c;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }
        
        #pgnumber {
            font-size: 1.2em;
            margin: 0 10px;
        }
  </style>
  
  <script>
definePageMeta({
    layout: 'blank'
});

  export default {
    data() {
      return {
        videoSource: '/scans/2019/demo.webm',
        currentPage: 0,
        totalPages: 0,
        vid: null,
      };
    },
    mounted() {
      this.vid = this.$refs.vid;
      this.vid.currentTime = this.currentPage - 1;
      this.totalPages = Math.floor(this.vid.duration) ;
      this.currentPage = this.$route.query.page || 1;
    },
    methods: {
      updateURL() {
        const urlParams = new URLSearchParams(window.location.search);
        urlParams.set('page', this.currentPage);
        window.history.pushState(null, '', `?${urlParams.toString()}`);
      },
      prev() {
        if (this.currentPage > 1) {
          this.currentPage--;
          this.vid.currentTime = this.currentPage - 1;
          this.updateURL();
        }
      },
      next() {
        if (this.currentPage < this.totalPages) {
          this.currentPage++;
          this.vid.currentTime = this.currentPage - 1;
          this.updateURL();
        }
      },
    },
  };
  </script>
  