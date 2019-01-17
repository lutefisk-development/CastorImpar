<template>
  <div class="order">
    <Navbar></Navbar>
    <h1>orderbekräftelsen goes here!</h1>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import Navbar from "@/components/Navbar.vue";
import Footer from "@/components/Footer.vue";

export default {
  name: "order",
  components: {
    Navbar,
    Footer
  }
};
</script>
