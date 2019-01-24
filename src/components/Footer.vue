<template>
  <nav class="footer navbar navbar-expand-lg navbar-bark">
    
      <div class="links col-sm-auto">
        <a class="row" href="#">{{ link1 }}</a>
        <a class="row" href="#">{{ link2 }}</a>
        <a class="row" href="#">{{ link3 }}</a>
        <a class="row" href="#">{{ link4 }}</a>
      </div>
      <div class="links col-sm-auto">
        <a class="row" href="https://sv-se.facebook.com/" target="_blank">{{ link5 }}</a>
        <a class="row" href="https://www.instagram.com/?hl=sv" target="_blank">{{ link6 }}</a>
      </div>
  
  </nav>
</template>

<script>
export default {
  name: "Footer",
  data() {
    return {
      link1: "Kontakta kundservice",
      link2: "GDPR",
      link3: "Medlemsvilkor",
      link4: "Medlemsförmåner",
      link5: "Följ oss på Facebook",
      link6: "Följ oss på Instragram"
    };
  }
};
</script>

<style>
.footer {
  background-color: #0e0052;
  color: white;
}
.footer-box {
  margin: 1vh 10vh;
}
a {
  color: white;
}
a:hover {
  color: white;
}
</style>
