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
            <h3>{{ order[0].title }}</h3>
          </div>
          <div>{{ order[0].date_time }}</div>
          <br>
          <div>Ditt bokningsnummer att att uppge i kassan: {{order[0].id }}</div>
          <br>
          <div>Filmastaden Småstaden</div>
          <div>Salong: {{ order[0].salon_name }}</div>
          <br>
          <div v-for="ord in order" :key="ord">
            <hr>
            {{ ord.name }} {{ ord.price }}kr
            <br>
            Rad: {{ ord.rownumber }} Plats: {{ ord.seatnumber }}
            <br>
            <br>
          </div>
          <br>
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
      ord: false
    };
  },
  created() {
    this.$axios.get("confirmOrder_db.php").then(response => {
      this.order = response.data.reverse();
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
