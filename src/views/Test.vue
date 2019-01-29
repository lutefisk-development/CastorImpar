<template>
   <div>
      
      <Login></Login>
      <register></register>
      <Footer></Footer>
   </div>
</template>

<script>
import Login from '@/components/LoginComponent.vue'
import register from '@/components/RegMemberComponent.vue'
import Footer from '@/components/Footer.vue'
export default {
   name: 'Test',
   components: {
      Login,
      register,
      Footer
   }
}
</script>

