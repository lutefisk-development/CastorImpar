<template>
  <div class="loginComponent">
      <button type="button" class="btn btn-primary signIn-button top" data-toggle="modal" data-target="#regModal">registrera</button>
      <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="regModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header login-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h5 class="modal-title h5-reg" id="exampleModalLabel">Castor Impar medlemsklubb</h5>
                  <p class="modal-title p-reg" id="exampleModalLabel">Ta del av nyheter, samla poäng och mycket mer!</p>
               </div>
               <div class="modal-body">
                  <h6>Registrera mig</h6>
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control" v-model="firstname" :disabled="loading" placeholder="Förnamn" aria-label="Förnamn" aria-describedby="addon-wrapping">

                     <input type="text" class="form-control" v-model="lastname" :disabled="loading" placeholder="Efternamn" aria-label="Efternamn" aria-describedby="addon-wrapping">
                  </div>

                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control reg-form" v-model="email" :disabled="loading" placeholder="Mailadress" aria-label="Mailadress" aria-describedby="addon-wrapping">
                  </div>

                  <div class="input-group flex-nowrap">
                     <input type="password" class="form-control reg-form" v-model="password" :disabled="loading" placeholder="Lösenord" aria-label="Lösenord" aria-describedby="addon-wrapping">
                  </div>
   
                  <div class="input-group flex-nowrap">
                     <input type="text" class="form-control reg-form" v-model="phone" :disabled="loading" placeholder="Mobil" aria-label="Stad" aria-describedby="addon-wrapping">
                  </div>

                  <button type="button" class="btn btn-primary reg-form reg-button" v-on:click="submit()" v-on data-dismiss="modal">BLI MEDLEM</button>
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

   .top {
      margin-top: 60px !important;
   }

</style>

<script>

 
export default {
  name: 'register',
  data: function() {
    return {
      firstname: '',
      lastname: '',
      email: '',
      password: '',
      phone: '',
      message: '',
      loading: false
    };
  },
  methods: {
    submit() { // register
      this.loading = true;
      this.message = '';
      this.$axios.post('register.php', {
        firstname: this.firstname,
        lastname: this.lastname,
        email: this.email,
        password: this.password,
        phone: this.phone
      }).then(response => {
        this.loading = false;
        if(response.data) {
          this.message = 'Registered';
        } else {
          this.message = 'Incorrect email/password';
        }
      }).catch(error => {
        this.message = 'Error';
        console.log('Error', error);
        this.loading = false;
      });
    }
  }
}

</script>
