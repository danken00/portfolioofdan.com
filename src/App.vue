<template>
  <div>
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
  font-family: 'Rubik', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>
