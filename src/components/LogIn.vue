<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md4>
            <v-card class="elevation-12">
              <v-toolbar dark color="primary">
                <v-toolbar-title>Login form</v-toolbar-title>
                <v-spacer></v-spacer>
              </v-toolbar>
              <v-card-text>
                <v-form>
                  <v-text-field prepend-icon="person" label="I D" type="text" v-model="uid"></v-text-field>
                  <v-text-field prepend-icon="lock" label="Password" type="password" v-model="password"></v-text-field>
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="primary" @click.stop="loginClick()">Log-In</v-btn>
                <v-btn color="primary" @click.stop="signupClick()">Sing-Up</v-btn>
              </v-card-actions>
            </v-card>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
  import {eventBus} from "@/main"; 
  export default {
    name: "LogIn",
    data: () => ({
      drawer: null,
      uid: '',
      password:'',
    }),
    methods: {
      loginClick(){
        eventBus.$emit("loginComplete")
      },
      signupClick() {
        eventBus.$emit("signupClick");
      }
    }
    
  }
</script>