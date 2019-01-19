<template>
  <div class="order">
    <Navbar></Navbar>
    <h1>Tack för din bokning!</h1>
    <p>Ditt bokningsnummer att att uppge i kassan:</p>
    <p>(00000)</p>
    <p>(24/1 22.30)</p>
    <p>Filmastaden biljett typ: (Vuxen)</p>
    <p>Småstaden Totalpris: (85)kr</p>
    <p>
      Biljetter hämtas ut mins 15 min innan filmen
      startar, betalning sker på plats.
    </p>
    <button>Återgå till filmvy</button>
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
