<template>
   <div>
      <div class="container">
         <div class="row">
            <div class="col-12 border"></div>
         </div>
         <div class="row">
            <div class="col-12 background">
               <div class="col-12 upper-first">
                  <div class="container">
                     <div class="row">
                        <div class="col-4 member-picture upper-first-inside">
                           <img :src="random" alt="picture of member">
                        </div>
                        <div class="col-6 upper-first-inside">
                           <p class="mina">MINA SIDOR</p>
                           <p class="member-name">Random Person</p>
                        </div>
                        <div class="col-2 upper-first-inside buttons">
                           <button type="button" class="btn btn-light member-button">Logga ut</button>
                           <button type="button" class="btn btn-light member-button">Visa Film</button>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-12 upper">
                  <!-- lägg till content här -->
               </div>
                <div class="col-12 points">
                  <!-- lägg till content här -->
               </div>
                <div class="col-12 history">
                  <!-- lägg till content här -->
               </div>
            </div>
         </div>
      </div>
   </div>
</template>

<style>
   
   .border {
      height: 10px;
      background-color: #79924E;
      border: none !important;
      
   }

   .background {
      background-color: #D3AC44;
   }

   .upper-first {
      height: 100px;
      padding: 0;
      margin-top: 15px;
   }

   .upper {
      background-color: white;
      height: 100px;
      padding: 0;
      margin-top: 15px;
      border: 1px solid #c6c6c6;
   }

    .points {
       background-color: white;
      height: 30px;
      padding: 0;
      margin-top: 25px;
      border: 1px solid #c6c6c6;
   }

   .history {
      background-color: white;
      height: 250px;
      padding: 0;
      margin-top: 5px;
      margin-bottom: 10px;
      border: 1px solid #c6c6c6;
   }

   .upper-first-inside {
      height: 100px;
   }

   .member-picture {
      padding: 0;
   }

   img {
      border: 2px solid black;
      height: 100%;
      width: 100%;
   }

   .buttons {
      padding: 0;
   }

   .member-button {
      padding: 0;
      margin-top: 3px;
      height: 40px;
      width: 40px;
      font-size: 12px;
      border: 2px solid black;
   }

</style>

<script>
import random from '@/images/random.png'
export default {
   name: 'MyPagesContent',
   data() {
      return {
         random: random,
      }
   }
}
</script>
