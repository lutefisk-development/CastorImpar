<template>
  <div class="order">
    <div class="top-box"></div>
    <h3>Tack för din bokning!</h3>
    <div>Ditt bokningsnummer att att uppge i kassan: {{ booknr }}</div>
    <br>
    <div>{{ movie }}</div>
    <div>{{ dateTime }}</div>
    <div>Filmastaden Småstaden</div>
    <div>Biljett typ: {{ ticketType }}</div>
    <div>Totalpris: {{ price }}kr</div>
    <br>
    <div>
      Biljetter hämtas ut mins 15 min innan filmen
      startar, betalning sker på plats.
    </div>
    <div class="return-box">
      <button>Återgå till filmvy</button>
    </div>
  </div>
</template>


<script>
export default {
  name: "ConfirmOrder",
  data() {
    return {
      booknr: "12345",
      movie: "Aquaman",
      dateTime: "24/1 22.30",
      ticketType: "Vuxen",
      price: "85"
    };
  }
};
</script>

<style>
.return-box {
  background-color: #79924e;
  height: 20vh;
  display: flex;
  align-items: flex-start;
  margin-top: 10vh;
}
.top-box {
  background-color: #79924e;
  height: 5vh;
  margin-bottom: 10vh;
}
button {
  margin: 5px;
}
br {
  background-color: #79924e;
}
</style>
