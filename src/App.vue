<template>
  <div id="app">
    <navbar>
    </navbar>
    <router-view/>
  </div>
</template>

<script>
  import Navbar from './components/Navbar'
export default {
  name: 'app',
  components: {
  Navbar
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
  background-color: #79924E;
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

