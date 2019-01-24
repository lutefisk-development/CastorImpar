<template>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../assets/movieposter1.jpg" style="height: 65vh;" alt="First slide">
      <div class="infobox">
        <div class="description_info">
        <br>
        <h5>{{title1}}</h5>
        <br>
        <p>{{description1}}</p>
        <br>
       <div class="button-group">
         <button>Order now</button>
         <button data-toggle="modal" data-target="#ModalCenter">Read more</button> <!--ta upp modal!!! -->
       </div>

      </div>
      </div>
            
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../assets/movieposter2.jpeg" style="height: 65vh;" alt="Second slide">
      <div class="infobox">
        <div class="description_info">
        <br>
        <h5>{{title2}}</h5>
        <br>
        <p>{{description2}}</p>
        <br>
        <div class="button-group">
         <button>Order now</button>
         <button data-toggle="modal" data-target="#ModalCenter">Read more</button> <!--ta upp modal!!! -->
       </div>

      </div>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../assets/movieposter3.jpeg" style="height: 65vh;" alt="Third slide">
      <div class="infobox">
        <div class="description_info">
        <br>
        <h5>{{title3}}</h5>
        <br>
        <p>{{description3}}</p>
        <br>
       <div class="button-group">
         <button>Order now</button>
         <button data-toggle="modal" data-target="#ModalCenter">Read more</button> <!--ta upp modal!!! -->
       </div>

      </div>
      </div>
    </div>
  </div>
  
</div>
</template>

<style>
  
  .carousel.slide{
    margin-top: 10vh;
    border-top: 3px solid black;
    padding: 5px;
    border: 20px solid transparent;
    border-image: url(../images/film-solid.svg) 90 stretch;
    text-align: center;
    word-wrap: normal;
  }

  .infobox {
    height: 60vh;
    border-bottom: 3px solid black;
    border-top: 3px solid black;
    background-color: white;
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
    height: 40px;
    width: 100px;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
    transition: all 0.6s ease 0s;
    cursor: pointer;
    outline: none;
    padding: 3px;
    margin: 5px;

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
    width: 99vw;
    height: 100vh;
   
   
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

.modal-body>img {
   width: 50vw;
   height: 30vh;
   object-fit: cover;
}


  
</style>

<script>

import picture1 from '@/assets/movieposter1.jpg'

  export default{
    name: "Movieholder",data() {
    return {
      title1: "Aquaman",
      title2: "Life of Pi",
      title3: "Star Wars",
      description1: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus.",
      description2: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus.",
      description3: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus.",
      picture1: picture1
      
    };
  },
  
  
};
</script>

