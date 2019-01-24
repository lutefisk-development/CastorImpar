<template>
  <div class="MyPages">
    <MyPagesContent></MyPagesContent>
    <Footer></Footer>
  </div>
</template>

<style>

</style>

<script>
import MyPagesContent from '@/components/MyPagesComponent.vue'
import Footer from '@/components/Footer.vue'
export default {
  name: 'MyPages',
  components: {
    MyPagesContent,
    Footer
  }
}
</script>
