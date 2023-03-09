@import url('https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,400;0,700;1,400;1,700;1,300&display=swap');

<template>
  <div>
    <Header/>
    <About/>
    <PortfolioPieces/>
  </div>
</template>

<script>
import Header from './components/homepage/Header.vue'
import About from './components/homepage/About.vue'
import PortfolioPieces from './components/homepage/PortfolioPieces.vue'

export default {
  name: 'App',
  components: {
    Header,
    About,
    PortfolioPieces
  }
}
</script>

<style lang="scss">


#app {
  font-family: 'Rubik', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>
