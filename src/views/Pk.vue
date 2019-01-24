<template>
   <div class="pk">
      <MVP></MVP>
      <Rabatt></Rabatt>
      <Footer></Footer>
   </div>
</template>


<script>
import MVP from '@/components/CompleteMVP.vue'
import Footer from '@/components/Footer.vue'
import Rabatt from '@/components/Rabatt.vue'
export default {
   name: 'pk',
   components: {
      MVP,
      Footer,
      Rabatt
   }
};
</script>
