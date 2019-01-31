<template>
  <div class="loginComponent">
      <button type="button" class="btn btn-primary signIn-button bottom" data-toggle="modal" data-target="#loginModal">login</button>
      <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header login-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h5 class="modal-title h5-login" id="exampleModalLabel">Castor Impar medlemsklubb</h5>
                  <p class="modal-title p-login" id="exampleModalLabel">Ta del av nyheter, samla poäng och mycket mer!</p>
               </div>
               <div class="modal-body">
                  <h6>Logga in</h6>
                  <div class="input-group flex-nowrap">
                     <input type="text" v-model="email" class="form-control login-form" placeholder="Mailadress" aria-label="Mailadress" aria-describedby="addon-wrapping">
                  </div>
                  <div class="input-group flex-nowrap">
                     <input type="password" v-model="password" class="form-control login-form" placeholder="Lösenord" aria-label="Lösenord" aria-describedby="addon-wrapping">
                  </div>
                  <p class="login-form login-lower glömt">Jag har glömt mitt lösenord</p>
                  <button tag="button" data-dismiss="modal" class="btn btn-primary login-form login-button" v-on:click="submit()" >LOGGA IN</button>
               </div>
               <div class="modal-footer login-footer"></div>
            </div>
         </div>
      </div>
   </div>
</template>


<style>

  .login {
    background-color: #F5F7E1;
    height:10vh;
  }

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

   .loginComponent {
     background-color: #79924E;
    color: white;
   }
   .login-form {
      margin-top: 10px;
   }

   .login-lower {
      margin-bottom: 147px !important;
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

   .signIn-button {
     margin-top: 5px;
     border: 1px solid black !important;
     background-color: #F5F7E1;
     color: black;
   }

   .bottom {
     margin-bottom: 206px;
   }

</style>

<script>
 export default{
  name: 'Login',
  data() {
    return {
      email: '',
      password: '',
      message: '',
      loading: false,
      showingLogin: false,
      user: {}
    };
  },
  created(){
    this.$axios.get('logIn.php').then(response => {
      this.user = response.data;
    }).catch(e => {
      // not logged in
    });
  },
  methods: {
    showLogin() {
      this.showingLogin = true;
    },
    cancelLogin(e){
      e.preventDefault();
      this.showingLogin = false;
    },
    submit() { // login
      this.loading = true;
      this.message = '';
      this.$axios.post('logIn.php', {
        email: this.email,
        password: this.password,
      }).then(response => {
        console.log(response);
        this.loading = false;
        this.showingLogin = false;
        if(response.data.loggedIn) {
          this.user = response.data.user;
          this.$router.push('MyPages');
        } else {
          this.message = 'Incorrect email/password';
        }
      }).catch(error => {
        this.message = 'Login error';
        console.log('login error', error);
        this.loading = false;
      });
    },
    logout() {
      this.loading = true;
      this.$axios.post('logout.php').then(response => {
        this.loading = false;
        this.user = {};
      }).catch(error => {
        console.log('logout error', error);
        this.loading = false;
      });
    }
  },
  watch: {
    email() {
      this.message = '';
    },
    password() {
      this.message = '';
    }
  }
};

</script>
