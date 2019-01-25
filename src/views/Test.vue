<template>
   <div>
      <Login></Login>
      <RegMember></RegMember>
      <Footer></Footer>
   </div>

</template>

<script>
import Login from '@/components/LoginComponent.vue'
import RegMember from '@/components/RegMemberComponent.vue'
import Footer from '@/components/Footer.vue'
export default {
   name: 'Test',
   components: {
      Login,
      RegMember,
      Footer
   }
}
</script>

