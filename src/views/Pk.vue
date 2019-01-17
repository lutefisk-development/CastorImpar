<template>
   <div class="pk">
      <pkcomp></pkcomp>
      <filmInfo></filmInfo>
   </div>
</template>

<script>
import pkcomp from '@/components/PkComp.vue'
import FilmInfo from '@/components/FilmInfo.vue'
export default {
   name: 'pk',
   components: {
      pkcomp,
      FilmInfo
   }
};
</script>
