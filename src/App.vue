<template>
  <div class="container-fluid">
    <Header/>
    <About/>
  </div>
</template>

<script>
import Header from './components/homepage/Header.vue'
import About from './components/homepage/About.vue'

export default {
  name: 'App',
  components: {
    Header,
    About
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>
