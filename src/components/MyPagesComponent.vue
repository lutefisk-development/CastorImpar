<template>

 <div class="MyPages">
    <div container-mypage>

               <div class="profile col-md-6 col-sm-8 mt-4">
                <section class="card mb-4 text-center">
                 <div class="card-mypage p-4">
                   <div class="card-header">
                    <h1>Mina sidor</h1>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Logga ut</a>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Visa film</a>
                  </div><!--end card header-->
                  <img class="card-img img-fluid" :src="profilbild" alt="profile-picture">
                  <div class="card-footer">
                    <p class="card-text pt-2">Förnamn Efternamn<br>Kundnummer: 000000</p>
                  </div><!--end card footer-->
                 </div><!--end card-mypage-->
                </section>
              </div><!--end profile-->


        <div class="bokningar col-md-6 col-sm-8">
          <div class="rubrik"><h5>Bokningar</h5></div>
       <table class="table">
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

</div>

 <div class="mina-poang col-md-6 col-sm-8">
              <div class="poang row mx-0 my-4 pt-4 px-2">
                <p class="col-6 d-flex justify-content-start">Poäng</p>
                <p class="col-6 d-flex justify-content-end">00000</p>
              </div>
        </div>

  <div class="poang-info col-md-6 col-sm-8">
          <div class="row rabatt mx-0">
            <div class="col rabatt-text p-2">
              <h4>Du har just nu tjänat ihop till:</h4>
              <p>25% rabatt på Popcorn Large</p>
            </div>
            <div class="col popcorn p-2">
               <img class="popcorn-img img-fluid" :src="popcorn" alt="popcorn">
            </div>
          </div>
  </div> 

       
            

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
    padding: 10px;

}

.rubrik h5{
    text-align: left;
    margin-bottom: 0px;
}

.rabatt{
	background-color: white;
}

.rabatt-text p, h4{
	padding: 10px;
	text-align: center;
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