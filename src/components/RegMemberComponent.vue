<template>
  <div class="login">
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#regModal">registrera</button>
      <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="regModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header login-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h5 class="modal-title h5-reg" id="exampleModalLabel">Castor Impar medlemsklubb</h5>
                  <p class="modal-title p-reg" id="exampleModalLabel">Ta del av nyheter, samla poång och mycket mer!</p>
               </div>
               <div class="modal-body">
                  <h6>Registrera mig</h6>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control" placeholder="Förnamn" aria-label="Förnamn" aria-describedby="addon-wrapping">
                     <input type="text" class="form-control" placeholder="Efternamn" aria-label="Efternamn" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control reg-form" placeholder="Mailadress" aria-label="Mailadress" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="password" class="form-control reg-form" placeholder="Lösenord" aria-label="Lösenord" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="password" class="form-control reg-form" placeholder="Repetera Lösenord" aria-label="Repetera Lösenord" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control reg-form" placeholder="Stad" aria-label="Stad" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control reg-form" placeholder="Mobil" aria-label="Stad" aria-describedby="addon-wrapping">
                  </div>
                  <button type="button" class="btn btn-primary reg-form reg-button" data-dismiss="modal">BLI MEDLEM</button>
               </div>
               <div class="modal-footer"></div>
            </div>
         </div>
      </div>
   </div>
</template>

<style>

   
   input[type="text"], input[type="password"] ,textarea {
      outline: none;
      box-shadow:none !important;
      border:1px solid #ccc !important;
   }

   button {
      outline: none;
      box-shadow:none !important;
      border:1px solid #ccc !important;
   }

    .modal-header {
      background-color: #79924E;
      color: white;
   }

   .modal-footer {
      background-color: #79924E;
   }

   .close {
      border: none !important;
      color: white;
   }

   .reg-form {
      margin-top: 10px;
   }

   .login-header {
      display: block;
   }

   .h5-reg {
      font-size: 14px;
   }
   
   .p-reg {
      font-size: 14px;
   }

   .reg-button {
      background-color:  #79924E;
      border: none;
   }

</style>

<script>
export default {
  name: "RegMember"

};
</script>