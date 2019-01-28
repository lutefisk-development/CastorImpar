<template>
   <div>
      <Login></Login>
      <RegMember></RegMember>
      <LillaSalen></LillaSalen>
      <StoraSalen></StoraSalen>
      <Footer></Footer>
   </div>
</template>

<script>
import Login from '@/components/LoginComponent.vue'
import RegMember from '@/components/RegMemberComponent.vue'
import Footer from '@/components/Footer.vue'
import LillaSalen from '@/components/LillaSalen.vue'
import StoraSalen from '@/components/StoraSalen.vue'
export default {
   name: 'Test',
   components: {
      Login,
      RegMember,
      Footer,
      LillaSalen,
      StoraSalen
   }
}
</script>

