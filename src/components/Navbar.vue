<template>
  <div id="nav" class="nav navbar navbar-expand-lg navbar-light bg-light justify-content-start">
    <nav class="navbar navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <router-link v-for="route in this.$router.options.routes" tag="li" :to="route.path">
                <a class='navbar-brand'>{{ route.name }}</a>
          </router-link>
        </li>
      </ul>
    </div>
  </nav>
</div>
</template>

<script>
export default {
  name: 'navbar'
}
</script>
