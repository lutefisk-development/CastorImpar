<template>
		<div class="newMovieContainer">
			<div class="newMovie">
			</div>
			<div class="newMovie">
			</div>
			<div class="newMovie">
			</div>
			<div class="newMovie">
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