<template>
  <div>
  <div id="carouselExampleControls" class="carousel slide" data-interval="false" data-ride="carousel">
   
  
      <div class="carousel-inner">
      <div v-for="(movie, i) in movies" v-bind:key="movie.id" class="carousel-item " v-bind:class="{ active: i==1 }">
        <img
      class="d-block w-100"
     :src="getImgUrl(movies[i].images)"
      style="height: 65vh;"
      
    >
        <div class="infobox">
          <div class="description_info">
            <br>
            <h5>{{movie.title}}</h5>
            <br>
            <p v-html="movie.description"></p>
         
            <div class="button-group">
             
              <button  @click="showModal = true">Read more</button>
              <modal  v-if="showModal" @close="showModal = false" v-bind:movie="movie"></modal>
    
             
            </div>
          </div>
        </div>
      </div>
    </div>




    
  </div>
 
  </div>
</template>

<style>
.carousel.slide {
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
  font-size: 12px;
  line-height: 14px;
}

.button-group {
  margin: auto;
  justify-content: space-evenly;
  display: flex;
  width: 200px;
  height: 30px;
}

.button-group button {
  font-family: "Roboto", sans-serif;
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
  background-color: #2ee59d;
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

.modal-body > iframe {
  width: 100%;
}

.modal-body > img {
  width: 50vw;
  height: 30vh;
  object-fit: cover;
}
</style>

<script>

import modal from '@/components/KarusellModal.vue'

export default {
  components: {modal},
  name: "Movieholder",
  data() {
    return {
      title: "",
      description: "",
      movies: [],
      showModal: false
     
    };
  },
  created() {
    this.$axios.get("movies.php").then(response => {
      this.movies = response.data;
    });
  },
  methods: {
    getImgUrl(pic) {
      console.log('pic' , pic);
      if (!pic) {
        return '';
      }

      let x = require("../images/" + pic);
      if (x) {
        return x
      }
      return '';
      
    },
   
  }
};
</script>
