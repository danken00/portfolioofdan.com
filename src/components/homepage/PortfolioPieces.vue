<template>
  <div class="background-gradient portfolio-pieces">
    <div class="container-lg">
      <div class="contact-panel-desktop"></div>

      <div class="post-header-images">
        <img :src="require('@/assets/images/homepage/kennedy.png')" class="image-kennedy">
        <img :src="require('@/assets/images/homepage/arrow.png')" class="image-arrow">
      </div>

      <div class="portfolio-item-wrapper">
        <template v-for="(item, index) in portfolioPieces" :key="index">
          <div class="portfolio-item">
            <div class="row portfolio-item-number text-start text-lg-end">
              <div class="col-sm-12 col-lg-5">
                <Numbers :number="item.number"/>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 col-lg-6 order-0.order-lg-last portfolio-item-image">
                <img :src="require('@/assets/images/portfolio/' + item.imageName)"
                     alt="Screenshot of {{ item.name }} project"
                     class="img-fluid">
              </div>
              <div class="col-sm-12 col-lg-3 offset-lg-2 order-lg-first portfolio-item-meta"><h3>{{
                  item.name
                }}</h3>
                <p>{{ item.description }}</p>
                <img :src="require('@/assets/images/homepage/slashes.png')" class="image-slashes">
              </div>
            </div>
          </div>
        </template>
      </div>
      <footer>
        Made with a little bit of
        <font-awesome-icon icon="heart"></font-awesome-icon>
        , but mostly just hard work. ©2023.<br>Most of these projects were done through amazing agencies filled with
        amazing people. Thanks!
      </footer>
    </div>
  </div>
</template>

<script>
import Numbers from './components/Numbers.vue'
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";

export default {
  name: 'PortfolioPieces',
  components: {
    Numbers,
    FontAwesomeIcon
  },
  data() {
    return {
      portfolioPieces: [
        {
          number: 39,
          name: 'U by Emaar',
          description: 'Full concept exploration, design, build and launch of Emaar\'s benefits program.',
          imageName: 'u-by-emaar.png'
        },
        {number: 38, name: 'Masdar Sustainability City', description: '', imageName: 'masdar.png'},
        {
          number: 37, name: 'Stillmind', description: 'Full website build, custom theme on Wordpress.', imageName:
                  'stillmind.png'
        },
        {number: 36, name: 'Yas Marina Circuit', description: '', imageName: 'yas.png'},
      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.portfolio-pieces {
  position: relative;


  .post-header-images {
    height: 100px;
    width: 250px;
    position: absolute;
    right: 10%;
    top: -10px;

    @media (min-width: 992px) {
      width: 410px;
      top: -15px;
      right: 20%;
    }

    img.image-kennedy {
      width: 100%;
      opacity: 60%;
    }

    img.image-arrow {
      position: absolute;
      left: 420px;
      top: 20px;
      height: 60px;
      opacity: 0.3;
      display: none;

      @media (min-width: 992px) {
        display: block;
      }
    }
  }

  .portfolio-item-wrapper {
    padding-top: 175px;

    @media (min-width: 992px) {
      padding-top: 125px;
    }

    .portfolio-item {
      margin-bottom: 120px;

      @media (min-width: 992px) {
        margin-bottom: 60px;
      }

      .portfolio-item-number {
        z-index: 100;
        margin-bottom: 25px;
        position: relative;
        overflow: hidden;
      }

      .portfolio-item-number::after {
        content: '';
        background: url('~@/assets/images/homepage/slashes.png') center/cover no-repeat;
        background-size: auto 42px;
        background-position: 0px 0px;
        opacity: 0.2;
        position: absolute;
        top: 0;
        left: 180px;
        height: 42px;
        width: 200px;

        @media (min-width: 992px) {
          display: none;
        }
      }

      .portfolio-item-meta {
        margin-top: -7px;
        text-align: left;
        color: #FFF;
        font-weight: 300;

        @media (min-width: 992px) {
          text-align: right;
        }

        h3 {
          text-transform: uppercase;
          font-size: 2rem;
          letter-spacing: -0.1rem;

          @media (min-width: 992px) {
            margin-bottom: 40px;
          }
        }

        .image-slashes {
          display: none;
          opacity: 0.1;
          height: 60px;
          margin-top: 35px;
          float: right;

          @media (min-width: 992px) {
            display: block;
          }
        }
      }

      .portfolio-item-image {
        margin-bottom: 35px;

        img {
          box-shadow: 0 0 80px rgba(0, 0, 0, 0.35);
          max-width: 100%;
        }
      }
    }
  }

  &.background-gradient {
    background-image: linear-gradient(to left, #c0c4cd, #8f90a0);
  }

  .contact-panel-desktop {
    position: sticky;
    top: 0px;
    background: url('~@/assets/images/homepage/dan-kennedy-label.png') center/cover no-repeat;
    width: 248px;
    height: 76px;
    z-index: 200;
    display: none;
    opacity: 0.9;

    @media (min-width: 992px) {
      display: block;
    }
  }

  footer {
    border-top: 1px solid rgba(200, 200, 200, .4);
    margin-top: 50px;
    padding-top: 50px;
    padding-bottom: 50px;
    text-align: center;
    color: #CCC;
    font-size: 12px;

    svg {
      color: #ff6472;
    }
  }
}
</style>
