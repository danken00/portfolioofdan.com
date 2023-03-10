<template>
  <div :class="['numbers', chooseRandomColour()]">
    <div class="number number-0"></div>
    <template v-for="number in getNumbers()" :key="number">
      <div :class="['number', 'number-'+number]"></div>
    </template>
    <div class="number number-underscore"></div>
  </div>
</template>

<script>
export default {
  name: 'Numbers',
  props: {
    number: Number
  },
  methods: {
    getNumbers() {
      return this.number.toString().split('')
    },
    chooseRandomColour() {
      const strings = ['pink', 'green']//, 'blue'];
      const randomIndex = Math.floor(Math.random() * strings.length);
      return strings[randomIndex];
    }
  }

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.numbers {


  .number {
    background: url('~@/assets/images/homepage/number-sprite.png') center/cover no-repeat;
    background-size: 417px 175px;
    height: 44px;
    width: 100px;
    display: inline-block;
    background-position-y: 0px;

    &.number-1 {
      background-position-x: -0px;
      width: 20px;
    }

    &.number-2 {
      background-position-x: -28px;
      width: 35px;
    }

    &.number-3 {
      background-position-x: -66px;
      width: 35px;
    }

    &.number-4 {
      background-position-x: -105px;
      width: 37px;
    }

    &.number-5 {
      background-position-x: -146px;
      width: 36px;
    }

    &.number-6 {
      background-position-x: -187px;
      width: 36px;
    }

    &.number-7 {
      background-position-x: -226px;
      width: 33px;
    }

    &.number-8 {
      background-position-x: -263px;
      width: 36px;
    }

    &.number-9 {
      background-position-x: -303px;
      width: 36px;
    }

    &.number-0 {
      background-position-x: -345px;
      width: 36px;
    }

    &.number-underscore {
      background-position-x: -384px;
      width: 33px;
    }
  }

  &.green {
    .number {
      background-position-y: -62px;
    }
  }

  &.blue {
    .number {
      background-position-y: -123px;
    }
  }
}

</style>
