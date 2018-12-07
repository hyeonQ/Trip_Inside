<template>
<div id="CategoryAxis"></div>
</template>

<script>
  import * as d3 from 'd3';
  import {bb} from 'billboard.js'
  import Vue from 'vue';

  var category = [
                    "서울",
                    "부산",
                    "대구",
                    "인천",
                    "광주",
                    "대전",
                    "울산",
                    "세종",
                    "경기",
                    "강원",
                    "충북",
                    "충남",
                    "전북",
                    "전남",
                    "경북",
                    "경남",
                    "제주"                
                ];
    var datas = [
                ["50만원미만",	 14.4	, 2.3,	 6.7	, 1.3,	 0,	 0	, 0,	 0,	 19.6	, 9.3,	 12.7,	 12.3,	 2.6,	 7.3,	 2.4	, 5	, 4.1],
 	  ["50만~100만원 미만",	 10.4	, 3.7	, 0.4,	 4.7	, 0.8,	 4.5	, 3,	 1.1	, 20.5	, 7.2	, 4.4	, 5.5	, 3.2,	 9.3	, 7.1	, 11.1	, 3.1],
 	  ["100만~200만원 미만",	 10.1	, 5.4	, 1.4	, 8.3	, 5.6	, 1,	 0.5	, 0.2	, 11.8,	 9	, 4.1	, 6.7	, 5.3	, 10.3	, 6.6,	 7.8	, 6.1],
 	  ["200만~300만원 미만",	 6.5	, 4.9	, 1.2	, 2.7	, 2.3	, 1.3	, 0.6	, 0.3	, 16.5,	 10.5	, 4.8	, 11.5,	 5.2	, 10.9,	 6.2,	 9.5,	 5.3],
 	  ["300만~400만원 미만",	 7.3	, 5.4	, 1.4,	 3.2	, 1.7	, 1.5	, 0.4	, 1.3,	 12.7	, 15.1	, 5.5	, 10.5	, 6.1	, 7.8	, 7.8,	 8	, 4.4],
 	  ["400만~500만원 미만",	 6.6	, 5.1	, 1	, 2.1,	 1.8	, 1.7	, 0.9	, 0.5	, 14	, 15.6,	 4.7,	 8.9	, 6.9	, 9.2	, 8	 ,7.1	, 5.9],
 	  ["500만~600만원 미만",	 6.3	, 5.9	, 1	, 1.9	, 1.8,	 0.9	, 1.2	, 0.2	, 14.1	, 14.4	, 6.2	, 9.1	, 6.6,	 7.8,	 9.1	, 9.3	, 4.2],
 	  ["600만원 이상",	 6.3	, 4.8,	 1.9,	 2.7,	 1.5,	 1.2	, 0.9,	 0.2	, 13.8	, 12.6	, 3.3,	 9.4	, 7.5	, 8.4	, 8.7	 ,11.4,	 5.4]
            ];
   

  export default {
    name: 'Income',
    data() {
      return { 
        
      }
    },
    mounted() {
    this.draw()

    },
    methods: {

     
      draw() {
       

       var chart = bb.generate({
         data: {
         columns: datas
         
            
         },
        axis: {
             x: {
                 type: "category",
                categories: category
                }
            },   
         bindto: "#CategoryAxis"
        });
       
        
       
        
        
      }
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->

<style scoped>
    #CategoryAxis{
        top: 12%;
        left: 10%;
        background-color:#b3b2b2;
        width:1200px;
        height:600px;
    }
   path{
     fill:#c8cec600;
     stroke:#5e320e;
   }

   path:hover{
     fill:#cbce3a;
     stroke:#15160a;
   }

   text{
     fill:rgb(255, 252, 252);
   }


</style>
