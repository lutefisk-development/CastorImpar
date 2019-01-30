<template>

 <div class="MyPages">
    <div container-mypage>
              <div class="space mt-4"><br></div>
               <div class="profile col col-md-4 col-lg-4">
                <section class="card profile-kort mb-4 text-center">
                 <div class="card-mypage p-4">
                   <div class="card-header profile-head">
                    <h1>Mina sidor</h1>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Logga ut</a>
                    <a href="#" class="btn btn-outline-secondary btn-sm mx-1" role="button" aria-pressed="true">Visa film</a>
                  </div><!--end card header-->
                  <img class="card-img img-fluid" :src="profilbild" alt="profile-picture">
                  <div class="card-footer profile-foot">
                    <p class="card-text profile-foot-text pt-2">{{ firstName }} {{lastName}}<br>Kundnummer: {{kundnummer}}</p>
                  </div><!--end card footer-->
                 </div><!--end card-mypage-->
                </section>
              </div><!--end profile-->


        <div class="bokningar col">
          <section class="card bokning-kort mb-4 p-3">
          <div class="rubrik"><h5>Bokningshistorik</h5></div>
          <!---<div v-for="title, date_time in personsbookings" :key="personsbookings.id"> ---->
            <p>{{ personsbookings }}</p>
            <p> {{ titel }} </p>
            <p>{{ biodatum }}</p>
          <!---</div> ---->
  
          </section>
</div>

    <div class="poang-mypage col mt-4">
          <section class="poang-kort card mb-4 text-center">
            <div class="card-poang p-4">
              <div class="card-header poang-head row m-0">
                <div class="col-6 poang-text"><h5>Poäng:</h5></div>
                <div class="col-6 poang-siffror"><h5>{{poang}}</h5></div>
              </div>
              <img class="card-img bonus-pic img-fluid" :src="popcorn" alt="bonus">
              <div class="card-footer poang-foot">
                <p class="card-text rabatt-text pt-2"><p><b>Du har just nu tjänat ihop till:</b><br>25% rabatt på Popcorn Large</p>
              </div>
                            <table class="table poang-tabell m-0">
        <tbody>

              <tr>
              <td>200 poäng</td>
              <td>25% stor popcorn</td>
            </tr>
            <tr>
              <td>400 poäng</td>
              <td>15% biobiljett</td>
          </tr>
          <tr>
              <td>600 poäng</td>
              <td>30% stora snacksmenyn</td>
          </tr>
          <tr>
              <td>800 poäng</td>
              <td>40% biobiljett</td>
          </tr>
          <tr>
              <td>1000 poäng</td>
              <td>50% biobiljett</td>
  </tr>
          <tr>
              <td>1200 poäng</td>
              <td>2 biobiljetter och stor popcorn</td>
  </tr>
        </tbody>
      </table>
      <hr>

      <p class="card-text poang-info pt-2">* För varje 100 kronors köp sparar du som medlem 50 poäng. Detta innebär att du vid exempelvis ett köp på 239 kr tjänar in 100 poäng. Detta system ger snabba rabatter vid besök hos Filmvisarna!</p>
      <h6>Välkommen på bio!</h6>
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
    margin-bottom: 0px;
}

.bokning-tabell{
  font-size: 0.9em;
}

.rubrik h5{
    margin-bottom: 0px;
    text-align: left;
    padding-bottom: 10px;
}

.bonus-pic{
  width:250px;
  padding: 25px;
}

.poang-text{
text-align: left;
}

.poang-siffror{
	text-align: right;
}

.poang-tabell{
	font-size: 0.7em;
}

.poang-info{
	font-size: 0.8em;
	text-align: left;
	font-style: italic;
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
        popcorn: popcorn,
        person: [],
        personsbookings: [],
        firstName: '',
        lastName: '',
        kundnummer: '',
        poang: '',
        titel: [],
        biodatum: [],
        bokningsid: ''

      }
    },
created(){
  this.$axios.get("mypage.php").then((response) => {
    this.person = response.data;
    this.firstName = this.person[0].firstname;
    this.lastName = this.person[0].lastname;
    this.kundnummer = this.person[0].id;
    this.poang = this.person[0].points;
  });

  this.$axios.get("bookinghistory.php").then((response) => {
    this.personsbookings = response.data;

    for (let i = 0; i < this.personsbookings.length; i++) {
      this.titel = this.personsbookings[i].title;
      console.log(this.titel);
    }

    for (let i = 0; i < this.personsbookings.length; i++) {
      this.biodatum = this.personsbookings[i].date_time;
      console.log(this.biodatum);
    }






    // this.titel = this.personsbookings.title;
    // this.biodatum = this.personsbookings.date_time;
    // console.log(this.titel);
    // console.log(this.biodatum);

    //this.bokningsid = this.personsbookings.booking.user_id;
    })
  },
methods:{

}
}




 


</script>