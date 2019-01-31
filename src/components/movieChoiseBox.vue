<template>
  <div class="mainframe">
   <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Se spelschema och välj film här!
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" v-for="day in days" v-on:click="selectDate(day)"><div class='movie-title'>{{day.title}}</div>{{ day.datum.format('ll') }}  {{day.tid}}</a>
      </div>
    </div>
    <div class='<visning v-for="visning in visningar"></visning>'> </div>
  </div>
</template>

<style>

.mainframe{
  width: 100vw;
  height:11vh;
  background-color: #F5F7E1;
  border-top: 3px solid black;
  border-bottom: 3px solid black;
}

#dropdownMenuButton {
  margin-top:2vh;
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
//<div v-if="this.today == databasdag in spelschema"> {{}} </div>
// v-else="show nothing"



var moment = require('moment');
moment().format();

var days =[1,2,3,4,5,6,7]

export default {
  name: 'calendercomponent',
  data(){


    return{
      days:[]
    }
  },
  created(){
    this.$axios.get("jsonmovies/visningar.json").then((response) => {
      let showings = response.data;
      let pickedDays = [];
      for(let showing of showings){
        console.log(showing.tid)
        if(pickedDays.includes(showing.datum)){
          continue;
        }
        showing.datum = moment(new Date(showing.datum));
        pickedDays.push(showing.datum);
        pickedDays.push(showing.tid);
        pickedDays.push(showing.title)
        //showing = moment()
        this.days.push(showing);
      }
      console.log(this.days)
    })
  },
  methods:{
    selectDate(day){
      console.log(day.datum),
      console.log(day.tid)
    }
  }
//   data(){

// var today = moment(new Date())
// today.subtract(1, 'd')
// var todayRouting = today.toString();
//    return{
//       today,
//       days,
//       todayRouting
//    }
//   }

}
</script>
