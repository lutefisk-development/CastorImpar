<template>
  <div class="order">
    <Navbar></Navbar>
    <confirmOrder></confirmOrder>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import Navbar from "@/components/Navbar.vue";
import Footer from "@/components/Footer.vue";
import ConfirmOrder from "@/components/ConfirmOrderComp.vue";

export default {
  name: "order",
  components: {
    Navbar,
    Footer,
    ConfirmOrder
  }
};
</script>
