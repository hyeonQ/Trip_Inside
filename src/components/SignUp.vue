<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md4>
            <v-card class="elevation-12">
              <v-toolbar dark color="primary">
                <v-toolbar-title>Signup form</v-toolbar-title>
                <v-spacer></v-spacer>
              </v-toolbar>
              <v-card-text>
                <v-form>
                  <v-text-field label="ID" placeholder="" v-model="uid"></v-text-field>
                  <v-text-field label="PASSWORD" placeholder="" v-model="password"></v-text-field>
                  <v-text-field label="이름" placeholder="" v-model="name"></v-text-field>
                  <v-text-field label="생년월일" placeholder="0000-00-00" v-model="birth"></v-text-field>
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="primary" @click.stop="cancel()">CANCEL</v-btn>
                <v-btn color="primary" @click.stop="submit()">SUBMIT</v-btn>
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
    name: "SignUp",
    data: () => ({
      drawer: null,
      uid: '',
      password:'',
      name: '',
      birth:''
    }),
    methods: {
      cancel() {
          if(confirm("회원가입을 취소하시겠습니까?")) {
            eventBus.$emit('cancelClick');
          }
        },
      submit(){
        if(confirm("회원가입을 완료하시겠습니까?")) {
           
     this.$http.get('signup?'+ '&id='+this.uid
                             + '&pw='+this.password
                             + '&name='+this.name
                             + '&birth='+this.birth, {
           }).then((res)=>{
              eventBus.$emit('signupComplete');
           }).catch((err)=>{
              console.log(err);
           })
           
          }
        
      }
    }
    
  }
</script>
