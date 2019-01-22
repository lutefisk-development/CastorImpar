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
        <i class="fas fa-ellipsis-h"></i>

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
        <i class="fas fa-ellipsis-h"></i>

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
        <i class="fas fa-ellipsis-h"></i>

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
  }

  .infobox {
    height: 40vh;
    border-bottom: 3px solid black;
    border-top: 3px solid black;
    background-color: white;
  }

  
</style>

<script>
  export default{
    name: "Movieholder",data() {
    return {
      title1: "Aquaman",
      title2: "Life of Pi",
      title3: "Star Wars",
      description1: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus.",
      description2: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus.",
      description3: "Donec mattis lacus quis est porttitor, in dictum ex efficitur. In congue, sem eget laoreet vehicula, elit lorem cursus magna, eget varius sem nulla vitae lectus."
      
      
    };
  }
  
};
</script>

