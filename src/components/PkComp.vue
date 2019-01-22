<template>
<<<<<<< Updated upstream
  <div class="pkcomp">
    <button @click="order(1000, 2000)">{{ text }}</button>
  </div>
=======
   <div class="pkcomp">
      <button @click="order(1000, 2000)">{{ text }}</button>
   </div>
>>>>>>> Stashed changes
</template>

<script>
export default {
<<<<<<< Updated upstream
  name: "pkcomp",
  data() {
    return {
      text: "klicka på mig för att göra beställning",
      counter: 0
    };
  },
  methods: {
    // Denna funktionen skapar ett random tal mellan 1000 och 2000. När vi ska göra den riktiga funktionen som skapar beställningsnummret kan vi inte använda denna finktionen!
    order: function(min, max) {
      this.counter = Math.floor(Math.random() * (max - min) + min);
      alert("ditt beställningsnummer är " + this.counter);
    }
  }
};
</script>
=======
   name: 'pkcomp',
   data() {
      return {
         text: 'klicka på mig för att göra beställning',
         counter: 0
      }
   },
   methods: {
      // Denna funktionen skapar ett random tal mellan 1000 och 2000. När vi ska göra den riktiga funktionen som skapar beställningsnummret kan vi inte använda denna finktionen!
      order: function(min, max) {
         this.counter = Math.floor(Math.random() * (max - min) + min);
         alert('ditt beställningsnummer är ' + this.counter);
      }

   }
}
</script>

>>>>>>> Stashed changes
