<template>
		<div class="newMovieContainer">
			<div class="newMovie first">
			</div>
			<div class="newMovie second">
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
			margin-top: 20vh;

		}

		.newMovie {
			margin: 5px;
			width: 50vw;
		
		}

		.newMovie.first{
			background-image: url("../assets/movieposter2.jpeg");
			background-size: cover;
		}

		.newMovie.second{
			background-image: url("../assets/movieposter3.jpeg");
			background-size: cover;
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