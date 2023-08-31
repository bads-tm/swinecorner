<template>


<div class="billboard">

  <object data="/website/swinehdb.svg" type="image/svg+xml">
  </object>

<object data="/website/swinechd.svg" type="image/svg+xml">
  </object>

</div>
</template>

<style scoped>
/* * {outline: dotted} */
    .billboard img{object-fit: scale-down; max-width: 100%}
    object {width: 50%;}

    /*ads*/
.billboard-mob {  display: none;}

/* Media query for screens with width less than 707px */
@media (max-width: 707px) {
  /*.billboard {    display: none;  Hide .billboard  } */
  object {width: 100%;}
}
</style>