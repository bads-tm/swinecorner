<template>
    <div class="grid-item">
      <NuxtLink :to="`${baseUrl}/${imageUrl}`" target="_blank">
      <img :src="imageUrl" :alt="filename" loading="lazy" />
    </NuxtLink>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      filename: String,
      imageUrl: String,
      baseUrl: String,
    },
  };
  </script>
  
  <style scoped>
  .grid-item {
    position: relative;
    overflow: hidden;
  }
  
  .grid-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.2s;
  }
  
  .grid-item:hover img {
    transform: scale(1.1);
  }
  
  </style>
  