<template>
  <LogIn v-if="state==='login'"></LogIn>
  <SignUp v-else-if="state==='signup'"></SignUp>
</template>

<script>
    import {eventBus} from "@/main";
    import LogIn from "./LogIn";
    import SignUp from "./SignUp";
    export default {
      name: "Home",
      components: {LogIn, SignUp},
      data() {
        return {
          state: 'login'
        }
      },
      created() {
          eventBus.$on('signupClick', () => {
            this.state = 'signup';
          });
          eventBus.$on('cancelClick', () => {
            this.state = 'login';
          });
           eventBus.$on('signupComplete', () => {
            this.state = 'login';
          });
      }
    }
</script>

<style scoped>
</style>
