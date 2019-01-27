<template>
   <div class="start">
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items1" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items2" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items3" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items4" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items5" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items6" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
   </div>
</template>

<style>
   .start {
      Padding-top: 80px;
   }
   .form-check-inline {
      margin-right: 0.3rem;
      height: 20px;
      width: 20px;
   }
</style>


<script>
export default {
   name: 'LillaSalen',
   data() {
      return {
         items1: [
            {value: 1},
            {value: 2},
            {value: 3},
            {value: 4},
            {value: 5},
            {value: 6}
         ],
         items2: [
            {value: 7},
            {value: 8},
            {value: 9},
            {value: 10},
            {value: 11},
            {value: 12},
            {value: 13},
            {value: 14}
         ],
         items3: [
            {value: 15},
            {value: 16},
            {value: 17},
            {value: 18},
            {value: 19},
            {value: 20},
            {value: 21},
            {value: 22},
            {value: 23}
         ],
         items4: [
            {value: 24},
            {value: 25},
            {value: 26},
            {value: 27},
            {value: 28},
            {value: 29},
            {value: 30},
            {value: 31},
            {value: 32},
            {value: 33}
         ],
         items5: [
            {value: 34},
            {value: 35},
            {value: 36},
            {value: 37},
            {value: 38},
            {value: 39},
            {value: 40},
            {value: 41},
            {value: 42},
            {value: 43}
         ],
         items6: [
            {value: 44},
            {value: 45},
            {value: 46},
            {value: 47},
            {value: 48},
            {value: 49},
            {value: 50},
            {value: 51},
            {value: 52},
            {value: 53},
            {value: 54},
            {value: 55}
         ]
      }
   },
   methods: {
      pickedSeats: function() {
         console.log('STOL NR: ' + event.target.value)
      }
   }
}
</script>
