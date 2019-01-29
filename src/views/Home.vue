<template>
	<div>
<navbar> </navbar>
  
    <MovieSelector></MovieSelector>
    <Movieholder></Movieholder>
   
    <!--<img alt="Vue logo" src="../assets/logo.png">-->
    <!--<HelloWorld msg="Welcome to Your Vue.js App"/>-->
    <Footer></Footer>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";
import Footer from "@/components/Footer.vue";
import MovieSelector from "@/components/movieChoiseBox.vue";
import Movieholder from "@/components/Movieholder.vue";

export default {
  name: "home",
  components: {
     MovieSelector,
     Movieholder,
     HelloWorld,
    Footer,
    
  }
};
</script>
