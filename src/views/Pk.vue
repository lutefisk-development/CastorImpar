<template>
   <div class="pk">
      <MVP></MVP>
      <Footer></Footer>
   </div>
</template>

<script>
import MVP from '@/components/CompleteMVP.vue'
import Footer from '@/components/Footer.vue'
export default {
   name: 'pk',
   components: {
      MVP,
      Footer
   }
};
</script>
