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
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items7" @click="pickedSeats" :key="item.id" :value="item.value"
         :checked="item.checked" :disabled="item.disabled">
      </div>
      <div>
         <input class="form-check-inline" type="checkbox" v-for="item in items8" @click="pickedSeats" :key="item.id" :value="item.value"
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
   name: 'StoraSalen',
   data() {
      return {
         items1: [
            {value: 1},
            {value: 2},
            {value: 3},
            {value: 4},
            {value: 5},
            {value: 6},
            {value: 7},
            {value: 8},
         ],
         items2: [
            {value: 9},
            {value: 10},
            {value: 11},
            {value: 12},
            {value: 13},
            {value: 14},
            {value: 15},
            {value: 16},
            {value: 17}
         ],
         items3: [
            {value: 18},
            {value: 19},
            {value: 20},
            {value: 21},
            {value: 22},
            {value: 23},
            {value: 24},
            {value: 25},
            {value: 26},
            {value: 27}
         ],
         items4: [
            {value: 28},
            {value: 29},
            {value: 30},
            {value: 31},
            {value: 32},
            {value: 33},
            {value: 34},
            {value: 35},
            {value: 36},
            {value: 37}
         ],
         items5: [
            {value: 38},
            {value: 39},
            {value: 40},
            {value: 41},
            {value: 42},
            {value: 43},
            {value: 44},
            {value: 45},
            {value: 46},
            {value: 47}
         ],
         items6: [
            {value: 48},
            {value: 49},
            {value: 50},
            {value: 51},
            {value: 52},
            {value: 53},
            {value: 54},
            {value: 55},
            {value: 56},
            {value: 57}
         ],
         items7: [
            {value: 58},
            {value: 59},
            {value: 60},
            {value: 61},
            {value: 62},
            {value: 63},
            {value: 64},
            {value: 65},
            {value: 66},
            {value: 67},
            {value: 68},
            {value: 69}
         ],
         items8: [
            {value: 70},
            {value: 71},
            {value: 72},
            {value: 73},
            {value: 74},
            {value: 75},
            {value: 76},
            {value: 77},
            {value: 78},
            {value: 79},
            {value: 80},
            {value: 81}
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



