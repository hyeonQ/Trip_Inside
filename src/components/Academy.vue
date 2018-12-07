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
               ["초졸이하",	 13.8,	 3.4	, 2.4,	 5.7,	 5.7,	 1.3	, 0.5	, 0.2	, 18.5,	 7.7	, 6, 6.4,	 5.2	, 11.8	, 3	, 5.1	, 3.2],
 	["중학교(재/졸)",	 8.2	, 4.8,	 1.9	, 3.5,	 2.2	, 1.5	, 1.2	, 0.4,	 11	, 12.7	, 2.9	, 9.4	, 6.6	, 9.1	, 9.1	, 10.1,	 5.4],
 	  ["고등학교(재/졸)",	 6.3	, 4.1	, 1,	 2.5	, 2.6	, 1.3,	 0.9	, 0.6	, 14.2	, 14.3,	 4.7	, 9.7,	 5.6	, 10.6,	 8.4	, 8.6	, 4.7],
 	  ["전문대(재/졸)",	 5.6	, 4.7	, 0.8	, 4.4	, 1.1	, 1.1	, 0.5	, 0.6	, 14.6,	 11.6,	 5.6	, 12.6,	 6.5	, 9.6	, 7.8	, 6.6	, 6.2],
 	  ["대학교(재/졸)",	 7.5	, 6.3	, 1.7	, 2.6	, 1.6	, 1.4	, 1,	 0.3,	 13.9	, 13	, 4.7,	 8.2	, 7.3	, 7.1	, 7.7	, 10.6	, 5.3],
 	  ["대학원(재/졸)",	 5	, 6.9	, 1.1	, 2.2,	 2.1	, 2.5,	 0.1	, 0.9	, 15.3,	 16.1	, 6.4	, 9.3	, 5.6,	 4.2,	 8.8	, 9.1	, 4.3]
            ];
   

  export default {
    name: 'Sex',
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

<style>
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
