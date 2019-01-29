<template>
  <div class="mainframe">
   <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      SHOWINGS
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" v-for="day in days" v-on:click="selectDate(day)"><div class='movie-title'>{{day.title}}</div>{{ day.date_time.format('llll') }}</a>
      </div>
    </div>
  </div>
</template>

<style>

.dropdown-menu{
    max-height: 300px;
    margin-bottom: 10px;
    overflow:scroll;
    -webkit-overflow-scrolling: touch;
}

.booking-option{
   margin-bottom: 2% !important;
}

.movie-title{
  font-weight: bold;
}

.dropdown-item{
  margin-bottom: 0% !important;
}
</style>


<script>
import Router from "vue-router";

var moment = require('moment');
moment().format();

var days =[1,2,3,4,5,6,7]
var selectedShowing=[]
export default {
  name: 'calendercomponent',
  data(){


    return{
      days:[],
      selectedShowing:[],
      schedulebooking_input: '',
      schemaID: ''
    }
  },
  created(){
    this.$axios.get("schedule.php").then((response) => {
      let showings = response.data;
      let pickedDays = [];
      for(let showing of showings){
        if(pickedDays.includes(showing.date_time)){
          continue;
        }
        showing.date_time = moment(new Date(showing.date_time));
        pickedDays.push(showing.date_time);
        pickedDays.push(showing.tid);
        pickedDays.push(showing.title)
        this.days.push(showing);
      } 
    })
  },

  methods:{
    selectDate(day){
      selectedShowing.push(day),
      this.schedulebooking_input = selectedShowing[0].id
      this.schedulebooking_input = parseInt(this.schedulebooking_input, 10)
      console.log(this.schedulebooking_input)
//----------------------POST TO DB----------------------------//
this.$axios.post('PickedShowing.php', {
  schemaID: this.schedulebooking_input
}).then((response) => {
          console.log('skickat in film till php', response);
          this.$router.push("confirmorder")
});
//-------------------------------------------------------------//
    }

  }    
}
</script>
