<template>
  <div class="movie_container">
    <div class="img_holder">
      <img src="" alt="Aquaman">
    </div>
    <div class="information_holder">
      <div class="description_info">
        <br>
        <h5>{{title1}}</h5>
        <br>
        <p>{{description1}}</p>
      </div>
      <div class="short_info">
        <br>
        <p>Speltid: {{playtime1}}</p>
        <p>Språk: {{language1}}</p>
        <p>Undertext: {{subtitle1}}</p>
      </div>
    </div>
    
  </div>
</template>


<style>

  .movie_container {
    height: 60vh;
    background-color: white;
    margin-top: 5vh;
    margin-bottom: 30vh;
    border-top: 3px solid black; 
  }
  
  .information_holder {
    display: flex;
    flex-direction: row;
    height: 20vh;
    justify-content: space-between;
  }

  .description_info{
    background-color: yellow;
    height: 25vh;
    width: 60vw;
    margin-top: 50vh;
    border-top: 3px solid black;
    border-bottom: 3px solid black;
    text-align: left;
    padding-left: 4px;

  }

  .short_info{
    background-color: green;
    height: 25vh;
    width:40vw;
    margin-top: 50vh;
    border-top:3px solid black;
    border-bottom: 3px solid black;
    border-left: 3px solid black;
    text-align: left;
  }

  h5{
    font-size: 14px;
    text-decoration: underline;
    font-weight: bold;
    margin-bottom: -0.5rem;
  }

 .description_info > p{
  line-height: 12px;
  margin-top:0px;
 }

  p{
    font-size: 13px;
    line-height: 5px;
  }
  
</style>

<script>
export default {
  name: "Movieholder",
  data() {
    return {
      title1: "Aquaman",
      description1:"Prow scuttle parrel provost Sail ho shrouds spirits boom mizzenmast yardarm. Pinnace holystone mizzenmast quarter crow's nest furl. Swab barque starboard grog...",
        playtime1: "136min",
          language1: "Engelska",
            subtitle1: "Svenska"
    };
  }
  
};
</script>