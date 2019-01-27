<template>

 <div class="MyPages">

               <div class="col-md-6 col-sm-8 mt-4">
          <section class="card mb-4 text-center">
            <div class="card-mypage p-4">
              <div class="card-header">
                 <h1>Mina sidor</h1>
                <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Logga ut</a>
                <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Visa film</a>
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
    }
}
</script>