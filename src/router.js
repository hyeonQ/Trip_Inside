import Vue from 'vue'
import Router from 'vue-router'
import Month from '@/components/statistics/Month.vue'
import Weather from '@/components/Weather.vue'
import Sex from '@/components/statistics/Sex.vue'
import Age from '@/components/statistics/Age.vue'
import Income from '@/components/statistics/Income.vue'
import Job from '@/components/statistics/Job.vue'
import Academy from '@/components/statistics/Academy.vue'
import Recommend from '@/components/Recommend.vue'
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
      path: '/weather',
      name: 'Weather',
      component: Weather
    },
    {
      path: '/sex',
      name: 'Sex',
      component: Sex
    },
    {
      path: '/age',
      name: 'Age',
      component: Age
    },
    {
      path: '/job',
      name: 'Job',
      component: Job
    },
    {
      path: '/income',
      name: 'Income',
      component: Income
    },
    {
      path: '/academy',
      name: 'Academy',
      component: Academy
    },
    {
      path: '/recommend',
      name: 'Recommend',
      component: Recommend
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
