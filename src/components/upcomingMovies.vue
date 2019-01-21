<template>
		<div class="newMovieContainer">
			<div class="newMovie first">
			</div>
			<div class="newMovie second">
			</div>
			<div class="newMovie third">
			</div>
			<div class="newMovie fourth">
			</div>
		</div>
	
</template>

<style>
	
		.newMovieContainer {
			display: flex;
			justify-content: space-between;
			height: 20vh;
			background-color: #F5F7E1;
			border-top: 3px solid black;
			border-bottom: 3px solid black;
			margin-bottom: 5vh;
			padding: 0px 10px 0px 10px;
			margin-top: -20vh;

		}

		.newMovie {
			margin-top: 5vh;
			width: 15vw;
			height:10vh;
			border:2px solid black;
			background-color: white;
		}

		.newMovie.first{
			background-image: url("../assets/movieposter2.jpeg");
		}

		.newMovie.second{
			background-image: url("../assets/movieposter3.jpeg");
		}

		.newMovie.third{
			background-image: url("../assets/movieposter4.jpeg");
		}

		.newMovie.fourth{
			background-image: url("../assets/movieposter1.jpg");
		}

		h3{
			padding-top: 5vh;
			font-weight: bold;
		}

</style>

<script>
	export default{
		name: "upcominMovies",
		data() {
    		return {
    		};
    	}
	};

</script>