<template>
	<div class="rabatt">
		<p v-once>Normal pris: {{ pris }}</p>
		<p>Pensionär pris: {{ discount1(this.pris) }}</p>
		<p>Barn pris (upp till 12 år): {{ discount2(this.pris) }}</p>
	</div>


</template>

<script>
	export default {
		name: 'Rabatt',
		data() {
			return {
				pris: 85,
			}
		},
		methods: {
			discount1: function(a) {
				a -= 10;
				return a;
			},
			discount2: function(b) {
				b -= 20;
				return b;
			}
		}
	}

</script>