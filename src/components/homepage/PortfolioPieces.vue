<template>
  <div class="background-gradient portfolio-pieces">
    <div class="container-lg">

      <!--      <div class="post-header-images">-->
      <!--        <img :src="require('@/assets/images/homepage/kennedy.png')" class="image-kennedy">-->
      <!--        &lt;!&ndash;            <img :src="require('@/assets/images/homepage/slashes-truncated.png')" class="image-slashes">&ndash;&gt;-->
      <!--      </div>-->

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
  </div>
</template>

<script>
import Numbers from './components/Numbers.vue'

export default {
  name: 'PortfolioPieces',
  components: {
    Numbers
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
  padding-top: 175px;
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
    opacity: 0.1;
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
    }
  }
}

.background-gradient {
  background-image: linear-gradient(to left, #c0c4cd, #8f90a0);
}

//
//.portfolio-pieces {
//  .container-lg {
//    position: relative;
//
//    .post-header-images {
//      height: 100px;
//      position: absolute;
//      right: -30px;
//      top: -16px;
//
//      img.image-kennedy {
//        width: 402px;
//        opacity: 60%;
//        position: absolute;
//        top: 0px;
//        right: 0px;
//      }
//
//      img.image-slashes {
//        opacity: 30%;
//        position: absolute;
//        top: 0px;
//        right: 184px;
//      }
//    }
//  }
//}

</style>
