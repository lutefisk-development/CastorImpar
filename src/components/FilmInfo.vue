<template>

   <div class="flex-container film-box">
      
      <iframe
         type="text/html"
         width="200"
         height="250"
         :src="youtube"
         frameborder="0"
         allowfullscreen
      ></iframe> 

      <p>{{title}}</p>
      <p>Producerat: {{productionYear}}</p>
      <p>Antal minutter: {{length}}</p>
      <p>Kategori: {{genre}}</p>
      <div class="button-group">
         <button>Order now</button>
         <button data-toggle="modal" data-target="#ModalCenter">Read more</button> <!--ta upp modal!!! -->
      </div>
    
      <!-- Här börjar modal -->
      <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
         <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content modal-custom">
               <div class="modal-header">
                  <h6 class="modal-title" id="exampleModalCenterTitle">{{ title }}</h6>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body outer col-sm-12 ">
                  <div class="modal-body inner">
                     <iframe
                        type="text/html"
                        width="200"
                        height="200"
                        :src="youtube"
                        frameborder="0"
                        allowfullscreen
                     ></iframe>
                  </div>
                  <div class="modal-footer">
                     <p class="modal-text">{{description}}</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


</template>

<style>
*{
    box-sizing: border-box;
}

.flex-container {
    display: flex;
    flex-direction: column;
    
} 



.film-box {
    
    padding: 5px;
    border: 20px solid transparent;
    border-image: url(../images/film-solid.svg) 90 stretch;
    text-align: center;
    word-wrap: normal;
    width: 250px;
    height: 350px;
    font-size: 12px;
    margin: auto;
        
  
}

.button-group {
    margin: auto;
    justify-content: space-evenly;
    display: flex;
    width: 200px;
    height: 30px;
  

}

.button-group button {
    font-family: 'Roboto', sans-serif;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 500;
    color: white;
    background-color: black;
    border: none;
    height: 25px;
    width: 90px;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
    transition: all 0.6s ease 0s;
    cursor: pointer;
    outline: none;
    padding: 3px;
}

.button-group button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
  
}

.modal-custom {
    padding: 5px;
    border: 20px solid transparent;
    border-image: url(../images/film-solid.svg) 90 stretch;
    font-size: 14px;
    width: 1000px;
    height: 520px;
   
}

#modal-center {
   padding: 0;
}

.outer {
   padding: 0;
}

.inner {
   padding: 0.5rem;
}

.modal-text {
   margin-top: 0.5rem;
   margin-bottom: 0.5rem;
}

.modal-header {
   padding: 0.5rem 1rem;
}

.modal-footer {
   padding-top: 0;
   padding-bottom: 0;
}

.modal-body>iframe {
   width: 100%;
}


</style>

<script>
import picture1 from '@/images/call-me-by-your-name1.jpg'
import picture2 from '@/images/call-me-by-your-name2.jpg'

export default {
   name: 'FilmInfo',
   data() {
      return {
         title: 'Call Me By Your Name',
         productionCountries: [
            { country: 'Italien' },
            { country: 'USA' } 
         ],
         productionYear: '2017',
         length: '132',
         genre: 'Drama',
         language: 'engelska',
         subtitles: 'svenska',
         director: 'Luca Guadagnino',
         actors: [
            { actor1: 'Armie Hammer' },
            { actor2: 'Timothée Chalamet' },
            { actor3: 'Michael Stuhlbarg' }
         ],
         youtube: 'https://www.youtube.com/embed/Z9AYPxH5NTM',            
         description: `Filmen utspelas i norra Italien sommaren 1983. En ung amerikansk-italienare blir förälskad i en amerikansk student som kommer för att studera och bo hos hans familj. Tillsammans upplever de en oförglömlig sommar - full av musik, mat och kärlek - som för evigt kommer att förändra dem.`,
         picture1: picture1,
         picture2: picture2 
      }
   }
}
</script>