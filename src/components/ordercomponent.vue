<template>

	<div class="ordercomponentbox">


		class=“form-check-inline”
           type=“checkbox”
           :value=“row.row_number + ‘,’ + seatNr”
           v-for=“seatNr of row.seats”
           v-bind:key=“seatNr”
           @click=“pickSeat”
      data-toggle=“modal”
data-target=“#paymentModal”


	<div class="input-group">
  		<div class="input-group-prepend">
    		<div class="input-group-text">



     			 <input type="radio" @click="vuxenvalue"  data-target="#något"  :value="price"> Vuxen
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



<!--
		<div class="vuxen">
			VUXEN
		<button v-on:click="addToCart" value="85">+</button>
       		<p>Cart({{ cart }})</p>    
    	<button v-on:click="removeFromCart">-</button>
    	SLUTSUMMA
    	</div>



    	<div class="pensioner">
    		PENSIONÄR
		<button v-on:click="addToCart">+</button>
    			<p>Cart({{ cart }})</p>
    	<button v-on:click="removeFromCart">-</button>
    	SLUTSUMMA
    	</div>




    	<div class="barn">
    		BARN
    	<button v-on:click="addToCart">+</button>
                <p>Cart({{ cart }})</p>
    	<button v-on:click="removeFromCart">-</button>
    	SLUTSUMMA
    	</div>

    	TOTAL    <button>BOKA</button>





  
  <br>
  <!-- <button v-on:click="addToCart" v-bind:disabled="! inStock" v-bind:class"[ disabledButton: !inStock ]"></button> -->
  <!-- <span>Checked names: {{ checkedNames }}</span> -->

  	
	</div> 
</template>


<style>
	.ordercomponentbox {
		background-color: red;
		height: 400px;
		width: auto;
	}
button {
	margin: 10px;
}
	.input-group-prepend {
	display: flex;
	flex-direction: row;
	margin: 50px;
}


	
</style>


<!--<script>
export default {
   name: 'ordercomponent',
   data() {
      return {


      },
      methods: {
      vuxenpickedvalue: function() {

        }

</script>  -->

<script>
export default {
	name: "ordercomponent",
	data() {
		return {

		}
	};
},
created() {
     this.$axios.get(“order.php”).then(response => {
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
  	vuxenvalue: function() {

  	}
  	this.vuxenvalue = temp;
  	console.log(this.vuxenvalue);
  }

</script>

created() {
