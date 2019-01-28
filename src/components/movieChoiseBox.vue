<template>
  <div class="mainframe">
   <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Se spelschema och välj film här!
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" href="#" v-for="day in days">{{formattedDate}}</a>
   </div>
</div>
  </div>
</template>

<style>

.mainframe {
background-color: #F5F7E1;
height: 10vh;
border-top: 3px solid black;
border-bottom: 3px solid black;
}

button {
margin-top: 7px;
}
.booking-option{
   margin-bottom: 2% !important;
}
</style>


<script>
var days =[1,2,3,4,5,6,7,8,9,10,11,12,13,14]
export default {
  name: 'calendercomponent',
  data(){
var myDate = new Date();
var month = ('0' + (myDate.getMonth() + 1)).slice(-2);
var date = ('0' + myDate.getDate()).slice(-2);
var year = myDate.getFullYear();
var formattedDate = year + '/' + month + '/' + date;

   return{
      formattedDate,
      days

   }
  }

}
</script>
