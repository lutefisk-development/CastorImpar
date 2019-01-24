<template>
  <nav class="footer navbar navbar-expand-lg navbar-bark">
    <div class="footer-box">
      <div class="links col-sm-auto">
        <a class="row" href="#">{{ link1 }}</a>
        <a class="row" href="#">{{ link2 }}</a>
        <a class="row" href="#">{{ link3 }}</a>
      </div>
      <div class="links col-sm-auto">
        <a class="row" href="https://sv-se.facebook.com/" target="_blank">{{ link4 }}</a>
        <a class="row" href="https://www.instagram.com/?hl=sv" target="_blank">{{ link5 }}</a>
      </div>
  </div>
  </nav>
</template>

<script>
export default {
  name: "Footer",
  data() {
    return {
      link1: "Kontakta kundservice",
      link2: "Medlemsvilkor",
      link3: "Medlemsförmåner",
      link4: "Följ oss på Facebook",
      link5: "Följ oss på Instragram"
    };
  }
};
</script>

<style>
..footer {
  background-color: #79924e;
  color: white;
}
.footer-box {
  margin: auto;
  border-top: 4px solid #c2992a;
}
a {
  color: white;
}
a:hover {
  color: white;
}
</style>
