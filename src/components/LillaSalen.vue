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
       data-toggle="modal" 
 data-target="#paymentModal"
            
           
         >

      </div>
      <div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">{{ pickPrice }}</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <div class="input-group" v-for="price in prices" v-bind:key="price.id">
                     <div class="input-group-prepend">
                        <div class="input-group-text">
                           <input type="radio" v-bind:key="pickedPrice" v-for="pickedPrice of prices.price" aria-label="Radio button for following text input">
                        </div>
                     </div>
                     <input type="text" class="form-control" value="Vuxen Pris" aria-label="Text input with radio button" readonly>
                  </div>
               </div>
               <div class="modal-footer"></div>
            </div>
         </div>
      </div>
      <button @click="orderSeats">yeay</button>
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
   name: "LillaSalen",
   data() {
      return {
         pickPrice: 'Välj Biljett',
         rows: [],
         pickedSeats: '',
         prices: [],
         salon: '',
         seat: ''
      };
   },
   created() {
      this.$axios.get("seats.php").then(response => {
         this.rows = response.data
         .filter(row => {
            return row.salon_ID == 1;
         })
         .map(r => {
            r.seats *= 1;
            return r;
         });
      console.log(this.rows);
      })
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
            temp += 6;
         } else if (row == 3) {
            temp += 14;
         } else if (row == 4) {
            temp += 23;
         } else if (row == 5) {
           temp += 33;
         } else if (row == 6) {
            temp += 43;
         }
         this.pickedSeats = temp;
         // this.pickedSeats.push(temp);
         console.log(this.pickedSeats);
      },
      orderSeats: function() {
         // for (let i = 0; i < this.pickedSeats.length; i++) {
         //    console.log(this.pickedSeats[i]);
         //}
         // this.$axios.post('place-order-seats.php',{
         //    salon: this.rows[0].salon_ID,
         //    seat: this.pickedSeats
         // }).then((response) => {
         //    console.log('du har skickat till php', response);
         // })
         // this.pickedSeats = 0;
         // console.log(this.pickedSeats);
      }
   }
};

// data-toggle="modal" 
// data-target="#paymentModal"
</script>
