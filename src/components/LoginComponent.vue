<template>
  <div class="login">
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal">login</button>
      <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header login-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h5 class="modal-title h5-login" id="exampleModalLabel">Castor Impar medlemsklubb</h5>
                  <p class="modal-title p-login" id="exampleModalLabel">Ta del av nyheter, samla poång och mycket mer!</p>
               </div>
               <div class="modal-body">
                  <h6>Logga in</h6>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control login-form" placeholder="Mailadress" aria-label="Mailadress" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="password" class="form-control login-form" placeholder="Lösenord" aria-label="Lösenord" aria-describedby="addon-wrapping">
                  </div>
                  <p class="login-form login-lower glömt">Jag har glömt mitt lösenord</p>
                  <button type="button" class="btn btn-primary login-form login-button" data-dismiss="modal">LOGGA IN</button>
               </div>
               <div class="modal-footer login-footer"></div>
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

   .close {
      border: none !important;
      color: white;
   }

   .login-form {
      margin-top: 10px;
   }

   .login-lower {
      margin-bottom: 100px !important;
   }

   .glömt {
      font-size: 14px;
      color: red;
      font-style: oblique;
   }

   .login-header {
      display: block;
      background-color: #79924E;
      color: white;
   }

   .login-footer {
      background-color: #79924E;
   }

   .h5-login {
      font-size: 14px;
   }
   
   .p-login {
      font-size: 14px;
   }

   .login-button {
      background-color:  #79924E;
      border: none;
   }

</style>

<script>
export default {
  name: "Login"

};
</script>

