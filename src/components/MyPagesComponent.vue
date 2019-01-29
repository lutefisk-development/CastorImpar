<template>

 <div class="MyPages">

               <div class="col-md-6 col-sm-8 mt-4">
          <section class="card mb-4 text-center">
            <div class="card-mypage p-4">
              <div class="card-header">
                 <h1>Mina sidor</h1>
                <a href="Home" class="btn btn-outline-secondary btn-sm mx-1" v-on:click="logout()" :disabled="loading" role="button" aria-pressed="true">Logga ut</a>
                <a href="Home" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Till startsidan</a>
              </div>
              <img class="card-img img-fluid" :src="profilbild" alt="profile-picture">
              <div class="card-footer">
                <p class="card-text pt-2">Förnamn Efternamn<br>Kundnummer: 000000</p>
              </div>
            </div>
          </section>
        </div>

</div>


</template>

<style>

.MyPages {
	background-color: #d3ac44;
}

.poang, .table {
    background-color: white;
}

.rubrik {
    background-color: white;
}

h4{
    padding: 10px;
    margin-bottom: 0px;
}

</style>

<script>
import profilbild from "@/images/random.png"
export default {
    name: "MyPagesComponent",
    data() {
      return{
        profilbild: profilbild
      }
    },
    created(){
    this.$axios.get('logout.php').then(response => {
      this.user = response.data;
    }).catch(e => {
      // not logged in
    });
  },
  methods: {
    logout() {
      this.loading = true;
      this.$axios.post('logout.php').then(response => {
        this.loading = false;
        this.user = {};
      }).catch(error => {
        console.log('logout error', error);
        this.loading = false;
        this.$router.push('/');
      });
    }
   }
}
</script>