<template>
	<div>
<navbar> </navbar>
    <MovieSelector></MovieSelector>
    <carousel></carousel>

    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";
import Footer from "@/components/Footer.vue";
import carousel from "@/components/MovieCarousel.vue";
import MovieSelector from "@/components/movieChoiseBox.vue";

export default {
  name: "home",
  components: {
     MovieSelector,
     carousel,
     HelloWorld,
    Footer
  }
};
</script>
