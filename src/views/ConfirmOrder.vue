<template>
  <div class="order">
    <confirmOrder></confirmOrder>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import Footer from "@/components/Footer.vue";
import ConfirmOrder from "@/components/ConfirmOrderComp.vue";

export default {
  name: "order",
  components: {
    Footer,
    ConfirmOrder
  }
};
</script>
