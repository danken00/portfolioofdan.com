<template>
  <div class="background-gradient">
    <div class="container-lg">
      <div class="row">
        <div class="col-12 header">
          <div class="header-images">
            <img :src="require('@/assets/images/homepage/dan.png')" class="image-dan">
            <img :src="require('@/assets/images/homepage/slashes-truncated.png')" class="image-slashes">
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Header',
}
</script>

<style scoped lang="scss">
.header {
  min-height: 180px;
  overflow: hidden;
  position: relative;

  .header-images {
    height: 100px;
    position: absolute;
    right: 30%;
    bottom: -42px;

    img.image-dan {
      width: 179px;
      opacity: 90%;
      position: absolute;
      top: 0px;
      right: 0px;
    }

    img.image-slashes {
      opacity: 30%;
      position: absolute;
      top: 0px;
      right: 184px;
    }
  }
}

.background-gradient {
  background-image: linear-gradient(to left, #10c3d8, #55d2ae);
}


</style>
