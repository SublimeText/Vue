<i18n>
	en:
		greeting: hello
		welcome: welcome
</i18n>

<script setup>
	import MainComponent from '@/components/MainComponent.vue'

	export default {
		data () {
			return { msg: 'Hello Vue!' }
		},
		render () {
			return { <p class="greeting">Hello {data.Vue}!</p> }
		},
		components: {
			MainComponent
		}
	}
</script>

<style lang="scss">
	$font-stack: Helvetica, sans-serif;
	$primary-color: #333;

	.MainComponent > body {
		font: 100% $font-stack;
		color: $primary-color;
	}
</style>

<template>
	<div>
		<img :class="$logo_class" src="./assets/logo.png">
		<h1 @click="greet(msg)">
			{{ msg + '!' }}
		</h1>
		<MainComponent/>
	</div> <!-- .name -->
</template>




