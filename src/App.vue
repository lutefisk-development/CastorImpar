<template>
  <div id="app">
    <div id="nav" class="nav navbar navbar-expand-lg navbar-light bg-light justify-content-start">
          <navbar>
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
          </navbar>
    </div>
    <router-view/>
  </div>
</template>

<script>
  import Navbar from './components/Navbar'
export default {
  name: 'app',
  components: {
    'Navigation': Navbar
  }
}
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>

