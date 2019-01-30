<template>
   <div class="start">
      <div v-for="row in rows" v-bind:key="row.id">
         <input
            class="form-check-inline"
            type="checkbox"
            :value="row.row_number + ',' + seatNr"
            v-for="seatNr of row.seats"
            v-bind:key="seatNr"
            @click="pickSeat"
         >

      </div>
      <button @click="showResults">yeay</button>
   </div>
</template>

<style>
.start {
  padding-top: 80px;
}
.form-check-inline {
  margin-right: 0.3rem;
  height: 20px;
  width: 20px;
}
</style>


<script>
export default {
   name: "StoraSalen",
   data() {
      return {
         rows: [],
         pickedSeats: []
      };
   },
   created() {
      this.$axios.get("seats.php").then(response => {
         this.rows = response.data
         .filter(row => {
            return row.salon_ID == 2;
         })
         .map(r => {
            r.seats *= 1;
            return r;
         });
      // console.log(this.rows);
      });
   },
   methods: {
      pickSeat: function() {
         let val = event.target.value;
         let row = val.split(",")[0];
         let seat = val.split(",")[1];
         let temp = parseInt(seat, 10);
         if (row == 1) {
            temp = temp;
         } else if (row == 2) {
            temp += 8;
         } else if (row == 3) {
            temp += 17;
         } else if (row == 4) {
            temp += 27;
         } else if (row == 5) {
            temp += 37;
         } else if (row == 6) {
            temp += 47;
         } else if (row == 7) {
           temp += 57;
         } else if (row == 8) {
            temp += 69;
         }
         let bookedSeat = this.rows[0].salon_ID + ',' + temp;
         this.pickedSeats.push(bookedSeat)
         console.log(this.pickedSeats);
      },
      showResults: function() {
         console.log(this.pickedSeats);
      }
   }
};
</script>



