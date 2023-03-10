@import url('https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,400;0,700;1,400;1,700;1,300&display=swap');

<template>
  <div>
    <Header/>
    <About/>
    <PortfolioPieces/>
    <div class="contact-buttons-mobile">
      <a title="Give me a call" href="tel:+971561588611">
        <font-awesome-icon icon="phone"></font-awesome-icon>
      </a>
      <a title="Flick me an email" href="mailto:dan@mojoplease.com">
        <font-awesome-icon icon="envelope"></font-awesome-icon>
      </a>
    </div>
  </div>
</template>

<script>
import Header from './components/homepage/Header.vue'
import About from './components/homepage/About.vue'
import PortfolioPieces from './components/homepage/PortfolioPieces.vue'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

export default {
  name: 'App',
  components: {
    Header,
    About,
    PortfolioPieces,
    FontAwesomeIcon
  }
}
</script>

<style lang="scss">

.contact-buttons-mobile {
  position: fixed;
  bottom: 100px;
  right: 20px;
  width: 62px;
  height: 108px;
  background-image: linear-gradient(to top, #10c3d8, #55d2ae);
  border-radius: 15px;
  box-shadow: 0 0 24px rgba(0, 0, 0, 0.2);
  overflow: hidden;
  z-index: 100;
  opacity: 0.9;

  @media (min-width: 992px) {
    display: none;
  }

  a {
    height: 54px;
    width: 62px;
    background: none;
    border: none;
    text-align: center;
    display: block;
    padding-top: 15px;

    svg {
      color: #FFF;
    }

    &:first-of-type {
      padding-top: 16px;
      border-bottom: 1px solid #81dec1;
    }

    &:hover {
      background: rgba(255, 255, 255, 0.2);
    }
  }
}

#app {
  font-family: 'Rubik', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

  a {
    color: #50d0b1;

    &:hover {
      text-decoration: none;
    }
  }
}
</style>
