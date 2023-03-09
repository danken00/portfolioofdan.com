<template>
  <div class="about">
    <div class="container-xl">
      <div class="row">
        <div class="col-sm-12 col-lg-2 text-center">
          <div class="photo"></div>
        </div>
        <div class="col-sm-12 col-lg-5 about-list"><h3>About</h3>
          <table>
            <tr v-for="(item, index) in listAbout" :key="index">
              <th>{{ item.title }}</th>
              <td>{{ item.value }}</td>
            </tr>
          </table>
        </div>
        <div class="col-sm-12 col-lg-5 about-list"><h3>Core</h3>
          <table>
            <tr v-for="(item, index) in listCore" :key="index">
              <th>{{ item.title }}</th>
              <td>{{ item.value }}</td>
            </tr>
          </table>
        </div>
        <div class="key-technologies">
          <template v-for="(item, index) in keyTech" :key="index">
            <img :src="require('@/assets/images/homepage/tools/' + item.imageName)" class="key-tech"
                 title="{{ item.title }}">
          </template>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'About',
  data() {
    return {
      listAbout: [
        {title: 'Origin (+passport)', value: 'New Zealand (+UK)'},
        {title: 'Current location', value: 'UAE (7 years)'},
        {title: 'Availability', value: 'Immediate'},
        {title: 'Visa', value: 'Self-supplied'},
        {title: 'More info', value: 'Download CV as .pdf'}
      ],
      listCore: [
        {title: 'Software', value: 'Full-stack, T-shaped developer'},
        {title: 'Tech stack', value: 'Python, web, Flutter, AWS'},
        {title: 'Leadership', value: 'Tech director, digital transformations'},
        {title: 'Practices', value: 'CI/CD/Dev-ops'},
        {title: 'Methodologies', value: 'Agile, certified Scrum Master'}
      ],
      keyTech: [
        {title: 'Python', imageName: 'python.png'},
        {title: 'Django', imageName: 'django.png'},
        {title: 'AWS', imageName: 'aws.png'},
        {title: 'Vue JS', imageName: 'vuejs.png'},
        {title: 'Flutter', imageName: 'flutter.png'},
        {title: 'Agile Scrum', imageName: 'scrum.png'},
        {title: 'Wordpress', imageName: 'wordpress.png'},
      ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.about {
  z-index: 10;
  background-color: white;
  box-shadow: 0 0 18px rgba(0, 0, 0, 0.2);
  padding-top: 60px;

  @media (min-width: 992px) {
    padding-top: 70px;
  }

  h3 {
    font-weight: bold;
    font-size: 1.3rem;
    letter-spacing: -0.05rem;
    color: #5a5a5a;
    margin-bottom: 10px;
  }

  .photo {
    width: 132px;
    height: 132px;
    border: 11px solid #FFF;
    border-radius: 50%;
    position: relative;
    background: url('~@/assets/images/homepage/dan-headshot.png') center/cover no-repeat;
    margin: 0 auto 30px auto;
  }

  .photo::before {
    content: "";
    position: absolute;
    top: -11px;
    left: -11px;
    right: -11px;
    bottom: -11px;
    border: 1px solid #dcdcdc;
    border-radius: 50%;
  }

  .about-list {
    text-align: left;

    table {
      width: 100%;
      letter-spacing: -0.05rem;
      margin-bottom: 30px;
      border-collapse: separate;
      border-spacing: 0.1rem 0.2rem;

      td, th {
        vertical-align: top;
      }

      th {
        width: 40%;
        font-weight: normal;
        color: #9ea1b2;
      }
    }
  }

  .key-technologies {
    margin-top: 15px;
    border-top: 1px solid #EEE;
    padding: 35px 30px 35px 30px;

    .key-tech {
      height: 20px;
      margin: 8px 17px;
      display: inline-block;
    }
  }
}
</style>
