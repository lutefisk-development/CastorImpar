<template>
  <div class="registermember">
    <register></register>
    <Login></Login>
    <Footer></Footer>
  </div>
</template>

<script>
import register from '@/components/RegMemberComponent.vue'
import Login from '@/components/LoginComponent.vue'
import Footer from '@/components/Footer.vue'
export default {
  name: 'registermember',
  components: {
    Login,
    register,
    Footer
  }
}
</script>
