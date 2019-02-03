import 'bootstrap/dist/css/bootstrap.min.css';
import 'jquery/src/jquery.js';
import 'popper.js/dist/popper.min.js';
import 'bootstrap/dist/js/bootstrap.min.js';
import Vue from "vue";
import './plugins/axios';
import App from "./App.vue";
import router from "./router";
import Storage from 'vue-ls';

Vue.config.productionTip = false;

let options = {
  namespace: 'vuejs__', // key prefix
  name: 'ls', // name variable Vue.[ls] or this.[$ls],
  storage: 'session', // storage name session, local, memory
};
 
Vue.use(Storage, options);

new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
