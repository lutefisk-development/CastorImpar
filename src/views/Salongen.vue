<template>
   <div class="salongen">
      <SalongComponent></SalongComponent>
      <Footer></Footer>
   </div>
</template>

<style>

</style>

<script>
import SalongComponent from '@/components/SalongComponent.vue'
import Footer from '@/components/Footer.vue'
export default {
   name: 'Salongen',
   components: {
      SalongComponent,
      Footer
   }
}
</script>


