<template>
  <div class="MyPages">
    <MyPagesComponent></MyPagesComponent>
    <Footer></Footer>
  </div>
</template>

<style>

</style>

<script>
import Footer from '@/components/Footer.vue'
import MyPagesComponent from '@/components/MyPagesComponent.vue'
export default {
  name: 'MyPages',
  components: {
    Footer,
    MyPagesComponent
  }
}
</script>
