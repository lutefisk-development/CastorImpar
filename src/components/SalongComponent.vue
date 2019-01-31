<template>
  <div class="salongcomponent">
    <div v-for="row in showing" v-bind:key="row.id">
      <input
        ref="inputs"
        class="form-check-inline seat"
        :data-row="row.row_number"
        :data-seat="seatNr"
        type="checkbox"
        :value="row.row_number + ',' + seatNr"
        v-for="seatNr of row.seats"
        v-bind:key="seatNr"
        @click.once="mySeat"
        data-toggle="modal"
        data-target="#paymentModal"
      >
    </div>
    <div
      class="modal fade"
      id="paymentModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header payment-header">
            <h5 class="modal-title" id="exampleModalLabel">Välj Biljett</h5>
          </div>
          <div class="modal-body">
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <input type="radio" aria-label="Close" data-dismiss="modal" @click="standardP">
                  <span aria-hidden="true"></span>
                </div>
              </div>
              <input
                type="text"
                class="form-control"
                value="Vuxen Pris - 85kr"
                aria-label="Text input with radio button"
                readonly
              >
            </div>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <input type="radio" aria-label="Close" data-dismiss="modal" @click="barnP">
                  <span aria-hidden="true"></span>
                </div>
              </div>
              <input
                type="text"
                class="form-control"
                value="Barn Pris - 65kr"
                aria-label="Text input with radio button"
                readonly
              >
            </div>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <input type="radio" aria-label="Close" data-dismiss="modal" @click="pensionP">
                  <span aria-hidden="true"></span>
                </div>
              </div>
              <input
                type="text"
                class="form-control"
                value="Pensionär Pris - 75kr"
                aria-label="Text input with radio button"
                readonly
              >
            </div>
          </div>
          <div class="modal-footer"></div>
        </div>
      </div>
    </div>
    <br>
    <p class="summa">Slutsumma: {{ totalPrice }} kr</p>
    <br>
    
    <button v-on:click="reserveSeat" class="btn btn-danger pickSeatButton">Reservera Biljett</button>
  
    <br>
    <br>
    
      <form class="confirms secondPickSeatButton" role="button" action="/confirmorder">
        <input type="submit" value="Bekräfta bokning" class="hej">
      </form>
      
  </div>
</template>

<style>
.salongcomponent {
  padding-top: 80px;
}

.form-check-inline {
  margin-right: 0.3rem;
  height: 20px;
  width: 20px;
}

.payment-header {
  background-color: #79924e;
  color: white;
}

.pickSeatButton {

   border: none !important;
   background-color: white;
   color: #79924E;
}

.secondPickSeatButton {
     background-color: #79924E;
   color: white;
}

.hej {
  width:  190px;
  background-color: white;
   color: #79924E;
}

.summa {
   color: white;
}
</style>

<script>
export default {
  name: "SalongComponent",
  data() {
    return {
      booking: "",
      chosenSeat: [],
      chosenRow: [],
      chosenPrice: [],
      temp2: [],
      temp3: "",
      temp4: [],
      getBookingId: [],
      showings: [],
      showing: [],
      test: [],
      prices: [],
      standard: '',
      barn: '',
      pension: '',
      totalPrice: 0,
      toDatabaseId: "",
      toDatabaseSeat: "",
      toDatabaseRow: "",
      toDatabaseSalon: "",
      toDatabasePrice: ""
    };
  },
  created() {
      this.$axios.get("seats.php").then(response => {
         this.showings = response.data
         this.temp2 = this.showings[this.showings.length - 1];
                     
            if (this.temp2.salon_id == 1) {
               this.temp3 = 6;
            } else if (this.temp2.salon_id == 2) {
               this.temp3 = 8;
            }

            if (this.temp3 == 6) {
               this.showing = this.showings.slice(-6);
            } else if (this.temp3 == 8) {
               this.showing = this.showings.slice(-8);
            }
         
         this.showing.sort((a, b) => (a.row_number > b.row_number) ? 1 : -1);
         this.showing.map(r => {
            r.seats *= 1;
            return r;
         });
      });
      this.$axios.get("getBookingId.php").then(response => {
         this.getBookingId = response.data
         this.temp4 = this.getBookingId[this.getBookingId.length - 1];
         console.log(this.temp4.id);

      })
      this.$axios.get("getPrice.php").then(response => {
         this.prices = response.data
         this.standard = this.prices[0].price;
         this.pension = this.prices[1].price;
         this.barn = this.prices[2].price;
      })
   },
   methods: {
      reserveSeat() {
         this.$axios.post('place-order-seats.php',{
            toDatabaseSalon: this.temp2.salon_id,
            toDatabaseId: this.temp4.id,
            toDatabaseRow: this.chosenRow[0],
            toDatabaseSeat: this.chosenSeat[0],
            toDatabasePrice: this.chosenPrice[0]
         }).then((response) => {
            console.log('du har skickat till php', response);
         })
      },
      barnP() {
         let temp = parseInt(this.barn, 10);
         this.barn = temp;
         this.chosenPrice.push(this.barn);
         temp = 0;
         temp += this.barn;
         this.totalPrice += temp;
      },
      pensionP() {
         let temp = parseInt(this.pension, 10);
         this.pension = temp;
         this.chosenPrice.push(this.pension);
         temp = 0;
         temp += this.pension;
         this.totalPrice += temp;
      },
      standardP() {
         let temp = parseInt(this.standard, 10);
         this.standard = temp;
         this.chosenPrice.push(this.standard);
         temp = 0;
         temp += this.standard;
         this.totalPrice += temp;
      },
      mySeat() {
         let val = event.target.value;
         let tempRow = val.split(",")[0];
         let tempSeat = val.split(",")[1];
         let seat = parseInt(tempSeat, 10);
         let row = parseInt(tempRow, 10);
         this.chosenRow.push(row);
         this.chosenSeat.push(seat);
      }
   }
};
</script>
