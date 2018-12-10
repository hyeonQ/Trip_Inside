import Vue from 'vue'
import './plugins/vuetify'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
export const eventBus = new Vue();

Vue.config.productionTip = false
Vue.prototype.$http = axios.create({
	baseURL: "http://192.168.99.100:8080/Trip_Inside/backend/"
});


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

