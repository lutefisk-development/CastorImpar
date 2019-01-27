<template>
  <div class="order">
    <div v-if="order">
      <div class="top-box"></div>
      <div class="card text-center">
        <div class="card-header">
          <h4>Tack för din bokning!</h4>
        </div>
        <div class="card-body">
          <div>
            <h3>{{ order[bookingNr].title }}</h3>
          </div>
          <div>{{ order[bookingNr].date_time }}</div>
          <br>
          <div>Ditt bokningsnummer att att uppge i kassan: {{order[bookingNr].id }}</div>
          <br>
          <div>Filmastaden Småstaden</div>
          <div>Biljett typ: {{ order[bookingNr].name }}</div>
          <div>Totalpris: {{ order[bookingNr].price }}kr</div>
        </div>
        <div class="card-footer text-muted">
          Biljetter hämtas ut mins 15 min innan filmen
          startar, betalning sker på plats.
        </div>
      </div>
      <div class="return-box">
        <form class="return-button" action="/">
          <input type="submit" value="Återgå till filmvy">
        </form>
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
      order: false,
      bookingNr: 0
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
  background-color: white;
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
.return-button {
  margin: 5px;
}
br {
  background-color: #79924e;
}
</style>
