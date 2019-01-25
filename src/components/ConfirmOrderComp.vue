<template>
  <div class="order">
    <div v-if="order">
      <div class="top-box"></div>
      <h3>Tack för din bokning!</h3>
      <div>Ditt bokningsnummer att att uppge i kassan: {{order[0].title }}</div>
      <br>
      <div>{{ order.movie }}</div>
      <div>{{ order.dateTime }}</div>
      <div>Filmastaden Småstaden</div>
      <div>Biljett typ: {{ order.ticketType }}</div>
      <div>Totalpris: {{ order.price }}kr</div>
      <br>
      <div>
        Biljetter hämtas ut mins 15 min innan filmen
        startar, betalning sker på plats.
      </div>
      <div class="return-box">
        <button>Återgå till filmvy</button>
      </div>
    </div>
  </div>
</template>


<script>
var moment = require("moment");
moment().format();

export default {
  name: "order",
  data() {
    return {
      order: false
    };
  },
  created() {
    this.$axios.get("confirmOrder_db.php").then(response => {
      this.order = response.data;
    });
  }
};
</script>

<style>
.order {
  font-weight: bold;
}
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
