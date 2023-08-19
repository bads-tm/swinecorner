<template>
<title>Downloads - S.W.I.N.E. Mods and more</title>
<div class="main">

  <ul class="links-list" v-for="item in jsonData" :key="item.title">
            <li>
              <NuxtLink :to="item.link">{{ item.title }}</NuxtLink>
              </li>
          </ul>
    
    </div>


<div class="right">
    <h2>Warning: Third party content</h2>
    <p>Watch out for potential viruses, trojans.</p>
</div>


  </template>
  
  <script>
      export default {
        data() {
          return {
            jsonData: [
            {
    "title": "Compatible with 2001 Version",
    "link": "/download/classic"
  },
  {
    "title": "Compatible with HD Remaster",
    "link": "/download/hdrem"
  },
  {
    "title": "Other or universal downloads, tools",
    "link": "http://digi.atw.hu"
  }
]
          };
        }
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
