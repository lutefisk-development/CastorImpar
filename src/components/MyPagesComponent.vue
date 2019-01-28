<template>

 <div class="MyPages">
    <div container-mypage>

               <div class="profile col-md-6 col-sm-8 mt-4">
                <section class="card mb-4 text-center">
                 <div class="card-mypage p-4">
                   <div class="card-header my-page-head">
                    <h1>Mina sidor</h1>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Logga ut</a>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Visa film</a>
                  </div><!--end card header-->
                  <img class="card-img img-fluid" :src="profilbild" alt="profile-picture">
                  <div class="card-footer my-page-foot">
                    <p class="card-text foot-text pt-2">Förnamn Efternamn<br>Kundnummer: 000000</p>
                  </div><!--end card footer-->
                 </div><!--end card-mypage-->
                </section>
              </div><!--end profile-->


        <div class="bokningar col-md-6 col-sm-8">
          <section class="card booking mb-4 p-3">
          <div class="rubrik"><h5>Bokningshistorik</h5></div>
       <table class="table bokning-tabell">
        <tbody>

              <tr>
              <td><b>24/1</b></td>
              <td><b>Aquaman</b></td>
              <td><b>22.30 Filmstaden</b></td>
              <td><b>85kr</b></td>
            </tr>
            <tr>
              <td>12/12</td>
              <td>Grindewalds Brott</td>
              <td>18.15 Filmstaden</td>
              <td>85kr</td>
          </tr>
          <tr>
              <td>11/10</td>
              <td>Lord of the rings</td>
              <td>19.30 Filmsatden</td>
              <td>85kr</td>
          </tr>
          <tr>
              <td>6/4</td>
              <td>King Kong</td>
              <td>21.15 Filmstaden</td>
              <td>85kr</td>
          </tr>
        </tbody>
      </table>
          </section>
</div>

    <div class="poang-mypage col-md-6 col-sm-8 mt-4">
          <section class="poang-kort card mb-4 text-center">
            <div class="card-poang p-4">
              <div class="card-header poang-head row">
                <div class="col-6 poang-text>"><h5>Poäng:</h5></div>
                <div class="col-6 poang-siffror"><h5>00000</h5></div>
              </div>
              <img class="card-img bonus img-fluid" :src="popcorn" alt="bonus">
              <div class="card-footer poang-foot">
                <p class="card-text bonus-text pt-2"><p><b>Du har just nu tjänat ihop till:</b><br>25% rabatt på Popcorn Large</p>
              </div>
            </div><!--end card-mypage-->
          </section>
        </div>



       
            

  </div>
 </div>

</template>

<style>

.MyPages {
	background-color: #d3ac44;
}

.table {
    background-color: white;
}

.rubrik {
    background-color: white;
    padding: 10px;
    margin-bottom: 0px;
}

.rubrik h5{
    padding: 10px;
    margin-bottom: 0px;
    text-align: left;
}

.bonus{
  width:250px;
  padding: 25px;
}

</style>

<script>
import profilbild from "@/images/blank-profil-picture.png"
import popcorn from "@/images/popcorn.jpg"
export default {
    name: "MyPagesComponent",
    data() {
      return{
        profilbild: profilbild,
        popcorn: popcorn
      }
    }
}
</script>