<template>
  <v-app dark>
    <v-navigation-drawer
      v-model="drawer"
      clipped
      fixed
      app
    >
     <v-list>
          <v-list-group
            v-for="item in items"
            v-model="item.active"
            :key="item.title"
            :prepend-icon="item.action"
            no-action
          >
            <v-list-tile slot="activator">
              <v-list-tile-content>
                <v-list-tile-title>{{ item.title }}</v-list-tile-title>
              </v-list-tile-content>
            </v-list-tile>

            <v-list-tile
              v-for="subItem in item.items"
              :key="subItem.title"
              :to="subItem.link"
              @click.stop = "drawer = !drawer"
            >
              <v-list-tile-content>
                <v-list-tile-title >{{ subItem.title }}</v-list-tile-title>
                          
              </v-list-tile-content>

              <v-list-tile-action>
                <v-icon>{{ subItem.action }}</v-icon>
              </v-list-tile-action>
                 
            </v-list-tile>
          </v-list-group>
        </v-list>
    </v-navigation-drawer>
   <v-toolbar app fixed clipped-left>
    <v-toolbar-side-icon v-show="login" @click.stop="drawer = !drawer"></v-toolbar-side-icon>
    <v-toolbar-title>TRIP INSIDE</v-toolbar-title>
    <v-spacer></v-spacer>
    <v-toolbar-items class="hidden-sm-and-down">
      <v-btn v-if="login" flat>Log-Out</v-btn>
    </v-toolbar-items>
  </v-toolbar>
  <router-view></router-view>
  <v-content v-if="!login">
    <LogIn/>
  </v-content>
  <v-footer app fixed>
      <span>&copy; South Korea ver.</span>
    </v-footer>
  </v-app>
</template>

<script>
import LogIn from './components/LogIn'

export default {
  name: 'App',
  components: {
    LogIn
  },
  data () {
    return {
      drawer: false,
      items: [
          {
            action: 'local_activity',
            title: 'Recommendation',
            items: [
              { title: 'District', link: '/district' },
              { title: 'Month', link: '/month' }
            ]
          },
          {
            action: 'sort',
            title: 'Statistics',
            items: [
              { title: 'Sex', link:'/sex' },
              { title: 'Age', link:'age' },
              { title: 'Job', link:'job' },
              { title: 'Income', link:'income' },
              { title: 'Academy', link:'academy' }
            ]
          }
        ]
      //
    }
  },
  computed: {
    login () {
      return true
    }
  }
}
</script>
