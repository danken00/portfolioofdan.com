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
                <Numbers :number="getPortfolioItemNumber(index)"/>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 col-lg-6 order-0.order-lg-last portfolio-item-image">
                <v-lazy-image :src="require('@/assets/images/portfolio/' + item.imageName)"
                              alt="Screenshot of {{ item.name }} project"
                              class="img-fluid"/>
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
import VLazyImage from "v-lazy-image";

export default {
  name: 'PortfolioPieces',
  components: {
    Numbers,
    FontAwesomeIcon,
    VLazyImage
  },
  data() {
    return {
      portfolioPieces: [
        {
          name: '___',
          description: 'iOS and Android, hyper-secure chat and video application.',
          imageName: 'security.png'
        },
        {
          name: 'U by Emaar',
          description: 'Full concept exploration, design, build and launch of Emaar\'s benefits program.',
          imageName: 'u-by-emaar.png'
        },
        {
          name: 'Masdar Sustainability City',
          description: 'Website for Masdar Sustainability City in Abu Dhabi.',
          imageName: 'masdar.png'
        },
        {
          name: 'Stillmind',
          description: 'Full website build, custom theme on Wordpress.',
          imageName: 'stillmind.png'
        },
        {
          name: 'Yas Marina Circuit',
          description: 'Ongoing support and improvement of full CMS and CRM integration.',
          imageName: 'yas.png'
        },
        {
          name: 'GEMS Education, MENA',
          description: 'Ongoing support and improvement of full CMS and CRM integration for 48 websites.',
          imageName: 'gems.png'
        },
        {
          name: 'Mayordomo (butler)',
          description: 'Integrated, cloud-based smart-locker system.',
          imageName: 'mayordomo.jpg'
        },
        {
          name: 'Lavalocker',
          description: 'Website for a smart-laundry locker company, based in Barcelona.',
          imageName: 'lavalocker.jpg'
        },
        {
          name: 'Carphone Warehouse interactive price scraper',
          description: '"Big data" competitor trade-in and product price scraper.',
          imageName: 'price-scraper.jpg'
        },
        {
          name: 'nocowboys.co.nz (version 3)',
          description: 'Website based in New Zealand that allows rating of tradesmen and tendering for jobs.',
          imageName: 'nocowboys3.jpg'
        },
        {
          name: 'World Economic Forum interactive infographic',
          description: 'Fully interactive, full-screen infographic for World Economic Forum\'s annual economic report.',
          imageName: 'wef.gif'
        },
        {
          name: 'TigerBeer.co.uk',
          description: 'TigerBeer UK.',
          imageName: 'tiger.jpg'
        },
        {
          name: 'Facebook game with Casio and Red Bull Racing',
          description: 'Facebook Formula1 qualifying game.',
          imageName: 'casio.jpg'
        },
        {
          name: 'Nectar Daily Deal Hunt.com',
          description: 'Social media game, hunting prizes physically and online using Google Streetview.',
          imageName: 'nectar.jpg'
        },
        {
          name: 'Serge',
          description: 'Wordpress instance for digital and strategic agency.',
          imageName: 'serge.jpg'
        },
        {
          name: 'Bulmers holding pages (winter and autumn)',
          description: 'Holding pages for Bulmers with dynamic snow and leaves.',
          imageName: 'bulmers.jpg'
        },
        {
          name: 'Howies.co.uk',
          description: 'Website build using the Magento CMS.',
          imageName: 'howies.jpg'
        },
        {
          name: 'ABF Ingredients Group',
          description: 'Five separate websites using the same template for the ABF Ingredients group of companies.',
          imageName: 'abf.gif'
        },
        {
          name: 'Azadeh Design Studio',
          description: 'Website for an up-and-coming furniture designer based in Canada.',
          imageName: 'azadehdesignstudio.jpg'
        },
        {
          name: 'T-Mobile - Life is for Sharing',
          description: 'Showcase of advertisements and campaigns for T-Mobile.',
          imageName: 't-mobile.jpg'
        },
        {
          name: 'Eric Whitacre World Map',
          description: 'Custom Wordpress plugin that brings together YouTube and Google Earth.',
          imageName: 'ericwhitacre.jpg'
        },
        {
          name: 'decca.com',
          description: 'Completion of the Decca website.',
          imageName: 'decca.jpg'
        },
        {
          name: 'O2 guardianship intranet',
          description: 'Internal campaign management system for O2 and Telefonica.',
          imageName: 'guardianship.jpg'
        },
        {
          name: 'karmichaelgroup.com',
          description: 'My second project for the Karmichael Group, an executive/career coaching and success company.',
          imageName: 'karmichael.jpg'
        },
        {
          name: 'nexgen-solutions.com',
          description: 'Online sales website for innovative hi-fi hardware.',
          imageName: 'nexgen.gif'
        },
        {
          name: 'empirestatepm.com',
          description: 'Complete project management website.',
          imageName: 'empirestatenew.gif'
        },
        {
          name: 'domotea.com (version 2)',
          description: 'My second website for this matcha tea company based in Canada.',
          imageName: 'domo2.gif'
        },
        {
          name: 'dedecehome.com',
          description: 'Showcase of products for this designer furniture company.',
          imageName: 'dedece1.gif'
        },
        {
          name: 'domotea.com',
          description: 'First iteration for this matcha tea company based in Canada.',
          imageName: 'dedece1.gif'
        },
        {
          name: 'lunarbuggy.com',
          description: 'Multi-user blog system built in PHP5 with MySQL, CSS & Google Maps. Includes bespoke CMS.',
          imageName: 'lunarbuggy1.gif'
        },
        {
          name: 'westernsouthland.co.nz',
          description: 'Community-based website for increasing tourism to the south of New Zealand.',
          imageName: 'westernsouthland1.gif'
        },
        {
          name: 'LiveStock',
          description:
                  'Windows-based software for managing stock, clients and bookings. Currently in use. Built in Delphi & Firebird.',
          imageName: 'livestock1.gif'
        },
        {
          name: 'HumanCargo Apparel',
          description: 'Content managed website for showcasing and selling this designer\'s tee-shirts.',
          imageName: 'humancargo1.gif'
        },
        {
          name: 'Dnasoft',
          description: 'Website for a small group of software developers based in New Zealand.',
          imageName: 'dnasoft1.gif'
        }
      ]
    }
  }, methods: {
    getPortfolioItemNumber(currentIndex) {
      return this.portfolioPieces.length - currentIndex;
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
      margin-bottom: 90px;

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
        margin-bottom: 15px;

        img {
          box-shadow: 0 0 80px rgba(0, 0, 0, 0.35);
          max-width: 100%;
          border-radius: 6px;
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
