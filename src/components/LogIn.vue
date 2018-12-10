<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>

 <v-dialog
      v-model="dialog"
      width="500"
    >

      <v-card>
        <v-card-title
          class="headline grey lighten-2"
          primary-title
        >
          로그인 오류
        </v-card-title>

        <v-card-text>
         ID 혹은 비밀번호가 잘못되었습니다.
          </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="primary"
            flat
            @click="dialog = false"
          >
            확인
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>


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
      myid: 'software',
      mypassword: '123123123',
      dialog: false,
      name: ''
    }),
    methods: {
      loginClick(){
        this.$store.commit()


        this.$http.post('login', {
          id: this.uid,
          pw: this.password
        }).then((res) => {
          console.log(res);
          if(res.status != 400) {
            this.$store.commit('login', 
              res.data[0].name);
      
 
            eventBus.$emit("loginComplete")
           this.dialog = false;


          } else this.loginFail();
        }).catch(error => this.loginFail());


       



       
      
      },
         
     
      signupClick() {
        eventBus.$emit("signupClick");
      },
      loginFail(){
        this.dialog = true;

      }

      
    }
    
  }
</script>