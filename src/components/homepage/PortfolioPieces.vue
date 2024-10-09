<template>
    <div class="background-gradient portfolio-pieces">
        <div class="container-lg">
            <div class="contact-panel-desktop">
                <div class="label"></div>
                <div class="contact-details">
                    <div class="contact-type contact-type-phone">
                        <font-awesome-icon icon="phone"></font-awesome-icon>
                        <span>(971) 561 588 611</span>
                    </div>
                    <div class="contact-type contact-type-email">
                        <font-awesome-icon icon="envelope"></font-awesome-icon>
                        <span><a href="mailto:dan@mojoplease.com">dan@mojoplease.com</a></span>
                    </div>
                </div>
            </div>

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
                                <img :src="require('@/assets/images/portfolio/' + item.imageName)"
                                     alt="Screenshot of {{ item.name }} project"
                                     class="img-fluid portfolio-piece-image  fader" loading="lazy" width="640"
                                     height="480" v-bind:class="{ 'fader-image-loaded': index == 0 }"/>
                            </div>
                            <div class="col-sm-12 col-lg-3 offset-lg-2 order-lg-first portfolio-item-meta"><h3
                                    v-html="item.name"></h3>
                                <p>{{ item.description }}</p>
                                <div class="badges">
                  <span v-for="(tool, toolIndex) in [...new Set(item.tools)]" :key="toolIndex"
                        class="badge rounded-pill badge-tool">
                    {{ tool }}</span>
                                    <span v-for="(skill, skillIndex) in [...new Set(item.skills)]" :key="skillIndex"
                                          class="badge rounded-pill badge-skill">
                    {{ skill }}</span>
                                </div>
                                <img :src="require('@/assets/images/homepage/slashes.png')" class="image-slashes">
                            </div>
                        </div>
                    </div>
                </template>
            </div>
            <footer>
                Made with a little bit of
                <font-awesome-icon icon="heart"></font-awesome-icon>
                , but mostly just hard work. ©2024.<br>Most of these projects were done through amazing agencies filled
                with
                amazing people. Thanks!<br>
                Call me on (971) 561 588 611 or email me at <a href="mailto:dan@mojoplease.com">dan@mojoplease.com</a>.
            </footer>
        </div>
    </div>
</template>

<script>
import Numbers from './components/Numbers.vue'
import {FontAwesomeIcon} from "@fortawesome/vue-fontawesome";

const Tools = Object.freeze({
    'aws': 'AWS',
    'ai': '🤖 Artifical Intelligence',
    'influx': 'InfluxDB',
    'django': 'Django',
    'flutter': '🐤 Flutter',
    'jira': 'Jira',
    'python': '🐍 Python',
    'mysql': '🐬 MySQL',
    'mongoDb': '🍃 MongoDB',
    'wordpress': 'Wordpress',
    'digitalOcean': 'Digital Ocean',
    'vueJs': 'Vue JS',
    'scss': 'SCSS',
    'bi': 'BI',
    'iosAndroid': 'iOS/Android',
    'webkit': 'WebKit',
    'umbraco': 'Umbraco',
    'sitecore': 'Sitecore',
    'cicd': 'CI/CD',
    'php': '🐘 PHP Laravel/Zend',
    'js': 'Javascript',
    'html': 'HTML',
    'delphi': 'Pascal Delphi',
    'docker': '🐳 Docker'
});
const Skills = Object.freeze({
    'architecture': 'Architecture',
    'agile': 'Agile',
    'scrumCoach': 'Scrum coach',
    'devOps': 'DevOps',
    'leadDeveloper': 'Lead developer',
    'transformation': 'Digital transformation',
    'design': 'Design',
    'pm': 'Project management',
    'clientManagement': 'Client management',
    'sysadmin': '🐧 Sysadmin',
    'strategy': '🤔 Strategy',
});

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
                    name: 'ClickASnap (CAS)',
                    description: 'CTO (previously lead developer). Website, backend and Flutter app.',
                    imageName: 'cas.png',
                    tools: [Tools.aws, Tools.python, Tools.django, Tools.ai, Tools.flutter, Tools.docker, Tools.influx,
                        Tools.mysql, Tools.iosAndroid, Tools.cicd, Tools.jira],
                    skills: [Skills.strategy, Skills.architecture, Skills.scrumCoach, Skills.devOps, Skills.leadDeveloper, Skills.sysadmin]
                },
                {
                    name: 'MDBX Health',
                    description: 'Health tech startup. Full website, app and deployment + pipelines.',
                    imageName: 'mdbx.png',
                    tools: [Tools.aws, Tools.python, Tools.django, Tools.flutter, Tools.docker, Tools.mysql, Tools.vueJs,
                        Tools.iosAndroid, Tools.cicd],
                    skills: [Skills.architecture, Skills.scrumCoach, Skills.devOps, Skills.leadDeveloper, Skills.sysadmin]
                },
                {
                    name: '<span class="muted">*****</span>',
                    description: 'iOS and Android, hyper-secure chat and video application for government and military.',
                    imageName: 'security.jpg',
                    tools: [Tools.jira, Tools.bi, Tools.iosAndroid],
                    skills: [Skills.architecture, Skills.agile, Skills.scrumCoach, Skills.transformation, Skills.pm]
                },
                {
                    name: 'yascycles.com',
                    description: 'Website design and build for local cycling store.',
                    imageName: 'yas-cycles.jpg',
                    tools: [Tools.wordpress, Tools.docker, Tools.digitalOcean, Tools.scss, Tools.webkit],
                    skills: [Skills.clientManagement, Skills.pm, Skills.design, Skills.sysadmin]
                },
                {
                    name: 'U by Emaar',
                    description: 'Full concept exploration, design, build and launch of Emaar\'s benefits program.',
                    imageName: 'u-by-emaar.png',
                    tools: [Tools.jira, Tools.sitecore],
                    skills: [Skills.pm, Skills.agile, Skills.scrumCoach, Skills.transformation, Skills.clientManagement]
                },
                {
                    name: 'Masdar Sustainability City',
                    description: 'Website for Masdar Sustainability City in Abu Dhabi.',
                    imageName: 'masdar.png',
                    tools: [Tools.sitecore, Tools.jira],
                    skills: [Skills.agile, Skills.scrumCoach, Skills.pm, Skills.clientManagement]
                },
                {
                    name: 'Stillmind',
                    description: 'Full website build, custom theme on Wordpress.',
                    imageName: 'stillmind.png',
                    tools: [Tools.wordpress, Tools.docker, Tools.digitalOcean, Tools.cicd, Tools.webkit, Tools.scss],
                    skills: [Skills.design, Skills.leadDeveloper, Skills.pm, Skills.sysadmin]
                },
                {
                    name: 'Yas Marina Circuit',
                    description: 'Ongoing support and improvement of full CMS and CRM integration.',
                    imageName: 'yas.jpg',
                    tools: [Tools.umbraco, Tools.jira],
                    skills: [Skills.pm, Skills.clientManagement, Skills.leadDeveloper, Skills.transformation, Skills.design,
                        Skills.agile, Skills.scrumCoach, Skills.sysadmin]
                },
                {
                    name: 'GEMS Education, MENA',
                    description: 'Ongoing support and improvement of full CMS and CRM integration for 48 websites.',
                    imageName: 'gems.png',
                    tools: [Tools.umbraco, Tools.jira, Tools.scss, Tools.webkit],
                    skills: [Skills.pm, Skills.clientManagement, Skills.leadDeveloper, Skills.agile, Skills.scrumCoach]
                },
                {
                    name: 'Mayordomo (butler)',
                    description: 'Greenfield startup. Integrated, cloud-based smart-locker system.',
                    imageName: 'mayordomo.jpg',
                    tools: [Tools.php, Tools.wordpress, Tools.scss, Tools.cicd, Tools.digitalOcean, Tools.jira, Tools.mysql],
                    skills: [Skills.design, Skills.architecture, Skills.agile, Skills.scrumCoach, Skills.leadDeveloper,
                        Skills.transformation, Skills.pm, Skills.clientManagement, Skills.sysadmin]
                },
                {
                    name: 'Lavalocker',
                    description: 'Website for a smart-laundry locker company, based in Barcelona.',
                    imageName: 'lavalocker.jpg',
                    tools: [Tools.php, Tools.wordpress, Tools.scss, Tools.cicd, Tools.digitalOcean, Tools.jira, Tools.mysql],
                    skills: [Skills.design, Skills.architecture, Skills.agile, Skills.scrumCoach, Skills.leadDeveloper,
                        Skills.transformation, Skills.pm, Skills.clientManagement, Skills.sysadmin]
                },
                {
                    name: 'Carphone Warehouse interactive price scraper',
                    description: 'Competitor trade-in and product price scraper.',
                    imageName: 'price-scraper.jpg',
                    tools: [Tools.php, Tools.mongoDb, Tools.jira, Tools.scss, Tools.webkit],
                    skills: [Skills.architecture, Skills.agile, Skills.scrumCoach, Skills.devOps, Skills.design, Skills.sysadmin]
                },
                {
                    name: 'nocowboys .co.nz (version 3)',
                    description: 'Startup website based in New Zealand that allows rating of tradesmen and tendering for jobs.',
                    imageName: 'nocowboys3.jpg',
                    tools: [Tools.jira, Tools.wordpress, Tools.scss, Tools.php, Tools.cicd],
                    skills: [Skills.architecture, Skills.agile, Skills.scrumCoach, Skills.devOps, Skills.leadDeveloper,
                        Skills.transformation, Skills.design, Skills.pm, Skills.clientManagement, Skills.sysadmin]
                },
                {
                    name: 'World Economic Forum interactive infographic',
                    description: 'Fully interactive, full-screen infographic for World Economic Forum\'s annual economic report.',
                    imageName: 'wef.gif',
                    tools: [Tools.wordpress],
                    skills: [Skills.design, Skills.clientManagement, Skills.sysadmin]
                },
                {
                    name: 'TigerBeer .co.uk',
                    description: 'TigerBeer UK.',
                    imageName: 'tiger.jpg',
                    tools: [Tools.wordpress],
                    skills: [Skills.leadDeveloper, Skills.agile, Skills.scrumCoach]
                },
                {
                    name: 'Facebook game with Casio and Red Bull Racing',
                    description: 'Facebook Formula1 qualifying game.',
                    imageName: 'casio.jpg',
                    tools: [Tools.js, Tools.html, Tools.scss],
                    skills: [Skills.leadDeveloper, Skills.agile, Skills.scrumCoach]
                },
                {
                    name: 'Nectar Daily Deal Hunt.com',
                    description: 'Social media game, hunting prizes physically and online using Google Streetview.',
                    imageName: 'nectar.jpg',
                    tools: [Tools.js, Tools.html, Tools.scss],
                    skills: [Skills.leadDeveloper, Skills.agile, Skills.scrumCoach]
                },
                {
                    name: 'Serge',
                    description: 'Wordpress instance for digital and strategic agency.',
                    imageName: 'serge.jpg',
                    tools: [Tools.wordpress],
                    skills: [Skills.clientManagement, Skills.pm, Skills.sysadmin]
                },
                {
                    name: 'Glasses Direct',
                    description: 'Lead developer for startup online glasses retailer.',
                    imageName: 'glassesdirect.jpg',
                    tools: [Tools.php, Tools.jira, Tools.scss, Tools.html, Tools.js],
                    skills: [Skills.leadDeveloper, Skills.pm, Skills.agile, Skills.design, Skills.sysadmin]
                },
                {
                    name: 'Bulmers holding pages (winter and autumn)',
                    description: 'Holding pages for Bulmers with dynamic snow and leaves.',
                    imageName: 'bulmers.jpg',
                    tools: [Tools.js, Tools.html, Tools.scss],
                    skills: [Skills.design]
                },
                {
                    name: 'Howies.co.uk',
                    description: 'Website build using the Magento CMS.',
                    imageName: 'howies.jpg',
                    tools: [Tools.js, Tools.html, Tools.scss],
                    skills: []
                },
                {
                    name: 'ABF Ingredients Group',
                    description: 'Five separate websites using the same template for the ABF Ingredients group of companies.',
                    imageName: 'abf.gif',
                    tools: [Tools.wordpress, Tools.digitalOcean, Tools.jira],
                    skills: [Skills.clientManagement, Skills.pm, Skills.architecture, Skills.sysadmin]
                },
                {
                    name: 'Azadeh Design Studio',
                    description: 'Website for an up-and-coming furniture designer based in Canada.',
                    imageName: 'azadehdesignstudio.jpg',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: []
                },
                {
                    name: 'T-Mobile - Life is for Sharing',
                    description: 'Showcase of advertisements and campaigns for T-Mobile.',
                    imageName: 't-mobile.jpg',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: []
                },
                {
                    name: 'Eric Whitacre World Map',
                    description: 'Custom Wordpress plugin that brings together YouTube and Google Earth.',
                    imageName: 'ericwhitacre.jpg',
                    tools: [Tools.html, Tools.js, Tools.scss, Tools.wordpress],
                    skills: [Skills.architecture]
                },
                {
                    name: 'decca.com',
                    description: 'Completion of the Decca website.',
                    imageName: 'decca.jpg',
                    tools: [Tools.html, Tools.js, Tools.scss, Tools.php],
                    skills: [Skills.pm]
                },
                {
                    name: 'O2 guardianship intranet',
                    description: 'Internal campaign management system for O2 and Telefonica.',
                    imageName: 'guardianship.jpg',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: [Skills.pm, Skills.sysadmin]
                },
                {
                    name: 'karmichael group .com',
                    description: 'My second project for the Karmichael Group, an executive/career coaching and success company.',
                    imageName: 'karmichael.jpg',
                    tools: [Tools.wordpress],
                    skills: [Skills.clientManagement, Skills.pm]
                },
                {
                    name: 'nexgen-solutions .com',
                    description: 'Online sales website for innovative hi-fi hardware.',
                    imageName: 'nexgen.gif',
                    tools: [Tools.wordpress],
                    skills: [Skills.sysadmin]
                },
                {
                    name: 'empirestatepm .com',
                    description: 'Complete project management website.',
                    imageName: 'empirestatenew.gif',
                    tools: [Tools.html, Tools.js, Tools.scss, Tools.php],
                    skills: [Skills.leadDeveloper, Skills.design, Skills.architecture, Skills.sysadmin]
                },
                {
                    name: 'domotea.com (version 2)',
                    description: 'My second website for this matcha tea company based in Canada.',
                    imageName: 'domo2.gif',
                    tools: [Tools.wordpress],
                    skills: []
                },
                {
                    name: 'dedecehome .com',
                    description: 'Showcase of products for this designer furniture company.',
                    imageName: 'dedece1.gif',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: []
                },
                {
                    name: 'domotea.com',
                    description: 'First iteration for this matcha tea company based in Canada.',
                    imageName: 'domo1.gif',
                    tools: [Tools.wordpress],
                    skills: []
                },
                {
                    name: 'lunarbuggy .com',
                    description: 'Multi-user blog system built in PHP5 with MySQL, CSS & Google Maps. Includes bespoke CMS.',
                    imageName: 'lunarbuggy1.gif',
                    tools: [Tools.html, Tools.js, Tools.scss, Tools.php],
                    skills: [Skills.design]
                },
                {
                    name: 'westernsouthland .co.nz',
                    description: 'Community-based website for increasing tourism to the south of New Zealand.',
                    imageName: 'westernsouthland1.gif',
                    tools: [Tools.html, Tools.js, Tools.scss, Tools.php],
                    skills: [Skills.design]
                },
                {
                    name: 'LiveStock',
                    description:
                        'Windows-based software for managing stock, clients and bookings. Currently in use. Built in Delphi & Firebird.',
                    imageName: 'livestock1.gif',
                    tools: [Tools.delphi],
                    skills: [Skills.design]
                },
                {
                    name: 'HumanCargo Apparel',
                    description: 'Content managed website for showcasing and selling this designer\'s tee-shirts.',
                    imageName: 'humancargo1.gif',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: []
                },
                {
                    name: 'Dnasoft',
                    description: 'Website for a small group of software developers based in New Zealand.',
                    imageName: 'dnasoft1.gif',
                    tools: [Tools.html, Tools.js, Tools.scss],
                    skills: [Skills.design]
                }
            ]
        }
    }, methods: {
        getPortfolioItemNumber(currentIndex) {
            return this.portfolioPieces.length - currentIndex;
        },
        onScroll() {
            // Get the portfolio images that haven't yet been shown
            const hidden_elements = document.querySelectorAll('img.portfolio-piece-image:not(.fader-image-loaded)');

            // Get the bounding client rectangle position in the viewport
            hidden_elements.forEach(function (element) {

                const bounding = element.getBoundingClientRect();

                if (bounding.top >= 0 &&
                    bounding.left >= 0 &&
                    bounding.right <= (window.innerWidth || document.documentElement.clientWidth) &&
                    bounding.bottom - Math.round(bounding.height * 0.75) <= (window.innerHeight ||
                        document.documentElement.clientHeight)
                ) {
                    element.classList.add('fader-image-loaded')
                }
            });

            // Fade the contact details on scroll
            const aboutPanel = document.querySelector('.about')
            const contactDetailsPanel = document.querySelector('.contact-details')
            const aboutPanelBounding = aboutPanel.getBoundingClientRect()
            const fadePixelLength = 600;
            let contactOpacity = 0;

            if (aboutPanelBounding.bottom > 0) {
                contactOpacity = 0
            } else if (aboutPanelBounding.bottom < (0 - fadePixelLength)) {
                contactOpacity = 1
            } else {
                contactOpacity = (1 / fadePixelLength) * aboutPanelBounding.bottom
            }

            contactDetailsPanel.style.opacity = String(Math.abs(contactOpacity))
        }
    },
    created() {
        window.addEventListener('scroll', this.onScroll);
    },
    unmounted() {
        window.removeEventListener('scroll', this.updatePortfolioImageVisibility);
    },
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
    padding-left: 12px;
    padding-right: 12px;

    @media (min-width: 992px) {
      padding-top: 125px;
    }

    .portfolio-item {
      margin-bottom: 80px;

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
          font-size: 1.7rem;
          font-weight: 700;
          letter-spacing: -0.1rem;
          overflow-wrap: anywhere;

          @media (min-width: 992px) {
            margin-bottom: 40px;
            font-size: 2rem;
          }

          .muted {
            color: #EEE;
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
        margin-bottom: 25px;
        max-width: 640px;
        max-height: 480px;

        img {
          box-shadow: 0 0 80px rgba(0, 0, 0, 0.35);
          max-width: 100%;
          border-radius: 6px;

          &.fader {
            opacity: 0;
            transform: translate3d(0, 50px, 0);
            transition: opacity 0.7s, transform 0.7s;
          }

          &.fader-image-loaded {
            opacity: 1;
            transform: translate3d(0, 0, 0);
          }
        }
      }

      .badges {
        z-index: 10;

        //@media (min-width: 992px) {
        //  opacity: 0.5;
        //  transition: opacity 0.3s;
        //
        //  &:hover {
        //    opacity: 1;
        //  }
        //}

        .badge {
          margin: 0 2px;
          font-weight: normal;
          font-size: 0.7rem;

          &.badge-tool {
            background-color: #58d2ad;
          }

          &.badge-skill {
            background-color: #25c8cc;
          }
        }
      }
    }
  }

  &.background-gradient {
    background-image: linear-gradient(to left, #c0c4cd, #8f90a0);
  }

  .contact-panel-desktop {
    position: sticky;
    width: 248px;
    display: none;
    z-index: 200;
    opacity: 0.9;
    top: 0px;

    .label {
      background: url('~@/assets/images/homepage/dan-kennedy-label.png') center/cover no-repeat;
      width: 248px;
      height: 76px;
      margin-bottom: 2px;
    }

    .contact-type {
      padding: 0 0 4px 5px;
      color: #EEE;
      font-size: 14px;
      font-weight: 300;

      a {
        color: #EEE !important;
        text-decoration: none;

        &:hover {
          text-decoration: underline;
        }
      }

      svg {
        color: #bebfc8;
        width: 40px;
      }
    }

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
    color: #DDD;
    font-size: 12px;

    svg {
      color: #ff6472;
    }
  }
}

#app footer {
  a {
    color: #DDD;

    &:hover {
      text-decoration: none;
    }
  }
}
</style>
