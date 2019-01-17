<template>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" class=""></li>
      <li data-target="#myCarousel" data-slide-to="2" class=""></li>
      <li data-target="#myCarousel" data-slide-to="3" class=""></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item carousel-item-next carousel-item-left">
        <svg class="bd-placeholder-img" width="90%" height="80%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="80%"></rect></svg>
        <div class="container">
          <div class="carousel-caption text-left">
            <h1>hej</h1>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="90%" height="80%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="80%"></rect></svg>
        <div class="container">
          <div class="carousel-caption">
            <h1>hej</h1>
          </div>
        </div>
      </div>
      <div class="carousel-item active carousel-item-left">
        <svg class="bd-placeholder-img" width="90%" height="80%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="80%"></rect></svg>
        <div class="container">
          <div class="carousel-caption text-right">
            <h1>hej</h1>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="90%" height="80%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"><rect fill="#777" width="100%" height="80%"></rect></svg>
        <div class="container">
          <div class="carousel-caption">
            <h1>hej</h1>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</template>

<script>
export default {
  name: "carousel",
  data() {
    return {
      title1: 'Aquaman,
      title2: 'Life of Pi',
      title3: 'Star Wars: The force awakens',
      title4: 'Lord of the rings',
      
    };
  }
};
</script>

<style>
	.carousel {
		margin-top: 50px;
	}
</style>

<script>
	export default {
		name: 'carousel'
	}
</script>