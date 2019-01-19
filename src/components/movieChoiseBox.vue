<template>
  <div class="container">
    <div class="upper_choise">
      <div class="movie_choise">
        <p>{{dropdown1}} <i class="fas fa-caret-down"></i></p>
      </div>
      <div class="date_box">
        <p>{{dropdown2}} <i class="fas fa-caret-down"></i></p>
      </div>
    </div>
    <div class="lower_choise">
      <div class="city_box">
        <p>{{dropdown3}} <i class="fas fa-caret-down"></i></p>
      </div>
      <div class="cinema_box">
        <p>{{dropdown4}} <i class="fas fa-caret-down"></i></p>
      </div>
      <div class="filter_box">
        <p>{{dropdown5}} <i class="fas fa-caret-down"></i></p>
      </div>
    </div>
  </div>
</template>


<style>
  .container {
    display: flex;
    flex-direction: column;
    background-color: white;
    height:20vh;
    width:100vw;
    margin-top: 20px;
    border-top: 3px solid black;
    border-bottom: 3px solid black;
  }

  .upper_choise {
    background-color: #F5F7E1;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-top: 10px;
  }

  .lower_choise {
    background-color: #F5F7E1;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-top: 10px;
    margin-bottom: 10px;
  }

  .movie_choise {
    border: 1px solid black;
    padding:4px 6px 0px 6px;
    width:64vw;
    
  }

  .date_box{
    border: 1px solid black;
    padding:4px 6px 0px 6px;


  } 

  .city_box, .cinema_box, .filter_box {
    border: 1px solid black;
    padding:4px 6px 0px 6px;
  }

  p {
    font-size: 20px;
    font-weight: bold;
  }

  .fas.fa-caret-down {
    margin-right:0px;
  }

  li {
    list-style-type: none;
  }
  
</style>

<script>
export default {
  name: "MovieSelector",
  data() {
    return {
      dropdown1: "FILMER",
      dropdown2: "23/1",
      dropdown3: "Stad",
      dropdown4: "Biograf",
      dropdown5: "Filtrera",
      movie1: "Aquaman",
      movie2: "Life of Pi",
      movie3: "Star Wars",
      movie4: "Lord of the ring"
      
    };
  }
  
};
</script>