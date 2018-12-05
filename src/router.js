import Vue from 'vue'
import Router from 'vue-router'
import Month from '@/components/Month.vue'
import Map from '@/components/Map.vue'
// import LogIn from '@/components/LogIn.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
   // {
    //  path: '/',
      //name: 'Home',
      //component: LogIn

    //},
    {
      path: '/month',
      name: 'Month',
      component: Month
    },
    {
      path: '/map',
      name: 'Map',
      component: Map
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
