<!--<template>

<div id="ordercomponentbox">

           
    <div class="input-group">
         <div class="input-group-prepend">
           <div class="input-group-text">



                 <input type="radio" v-on:click="katt()" value="85">




                 <div v-for="standard in prices"> {{ standard.standard }} </div>

            </div> 
         </div>    

         <div class="input-group-prepend">
           <div class="input-group-text">
                 <input type="radio"> Pensionär
               </div>
         </div>


         <div class="input-group-prepend">
           <div class="input-group-text">
                 <input type="radio"> Barn
               </div>
         </div>

    </div>

</div>

</template> 


<style>
   #ordercomponentbox {
       background-color: red;
       height: 400px;
       width: auto;
   }
button {
   margin: 10px;
}
.vuxen, .pensioner, .barn{
    display: flex;
    flex-direction: row;
    padding-bottom: 50px;
}
</style>



<script>



export default {
  el: '#ordercomponentbox',
  data() {
    return{
      prices: []
    }

  },
  created: function() {
    this.fetchItems();
  },
  methods: {


    fetchItems() {
      let uri= 'http://localhost/castorimpar/backend/routes/order.php';
      this.axios.get(uri).then((response) => {
        this.prices = response.data;
      })
    },
    katt() {
      let uri= 'http://localhost/castorimpar/backend/routes/order.php';
      this.axios.get(uri).then((response) => {
        
     for(let price of prices) {
     		alert(prices)

     }



      })

    }

  }
}





</script>


 <script>
    export default {
        name: ‘order’
        data() {
            return {}

        }
        
    }



</script> -->

<template>
<div id="ordercomponentbox">
   <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <P> Adult: </P><input type="input-group-text" v-model="AdultQty" @keyup.enter="calculatePrice">
            <P> Barn: </P><input type="input-group-text" v-model="BarnQty">
            <P> Pensionär: </P><input type="input-group-text" v-model="PensionärQty">
        <button class="btn btn-secondary" type="button" id="calculateButton" aria-haspopup="true" aria-expanded="false" v-on:click="calculatePrice()">
CALCULATE      </button>
<!-- 
                <input type="radio" v-on:click="katt()" value="85">
                <div v-for="standard in prices"> {{ standard.standard }} </div>
 -->
           </div>
        </div>
 
        <div class="input-group-prepend">
           <pre> <b><font size=20>Tickets Booked for: </font>
              Adult is :  {{AdultQty}} <br>,
               Barn is :  {{BarnQty}} <br>
               Pensionär is {{PensionärQty}}</b>
<br> Total Price is {{this.totalPrice}}</pre>
        </div>
<!--        <div class="input-group-prepend">
          <div class="input-group-text">
                <input type="radio"> Barn
              </div>
        </div> -->
   </div>
</div>
</template>
<style>
  #ordercomponentbox {
      background-color: red;
      height: 400px;
      width: auto;
  }
button {
  margin: 10px;
}
.vuxen, .pensioner, .barn{
   display: flex;
   flex-direction: row;
   padding-bottom: 50px;
}
</style>
<script>
  var AdultQty=0;
  var BarnQty = 0;
  var PensionärQty = 0;
  var prices=[1,2]; 
  var totalPrice=0;
export default {
 name: 'ordercomponentbox',
 data() {
   return{
    prices: [],
    AdultQty:0,
    BarnQty : 0,
    totalPrice : 0,
    PensionärQty : 0,
   }
 },
 created: function() {
   this.fetchItems();
 },
 methods: {
   fetchItems() {
     let uri= "order.php";
     this.axios.get(uri).then((response) => {
       prices = response.data;
       console.log(prices);
     })
   },
  calculatePrice() {
    this.totalPrice = 0;
    let uri= "order.php";
     this.axios.get(uri).then((response) => {
       prices = response.data;
       for(let price of prices) {
        if(price.id == 1) {
          console.log("Adult price id is" + price.id);
           console.log("Adult Seat price is" + price.price);
           console.log(price.name);
           console.log("Adult input qty is" + this.AdultQty);
          this.totalPrice = this.totalPrice + this.AdultQty*price.price;
          console.log("total price is:" + this.totalPrice);
          continue;
        }
        if(price.id == 3) {
          console.log("barn price id is : " + price.id);
          console.log("barn price  is : " + price.price);
          console.log("barn price name is : " + price.name);
          console.log("barn input qty is" + this.BarnQty);
          console.log(this.totalPrice);
          if(this.BarnQty > 0) {
            this.totalPrice = this.totalPrice + (this.BarnQty*price.price);
          }
          
          console.log(this.totalPrice);
        }
        if(price.id == 2) {
          console.log(price.id);
           console.log(price.price);
                      console.log(price.name);
                       console.log(this.AdultQty);
                       if(this.PensionärQty > 0) {
                        this.totalPrice = this.totalPrice + this.PensionärQty*price.price;
                       }
          
          console.log(this.totalPrice);
        }
       }
       console.log(prices);
     })
   },
   // katt() {
   //   let uri= 'http://localhost/castorimpar/backend/routes/order.php';
   //   this.axios.get(uri).then((response) => {
   //  for(let price of prices) {
   //          alert(prices)
   //  }
   //   })
   // }
 }
}
</script>