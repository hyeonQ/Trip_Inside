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
                  ["전문관리",	 5.9	, 5.8	, 1.4	, 2.5	, 2.5	, 1.8,	 0.5,	 0.2	, 12.2,	 13.5	, 2.2	, 10.7,	 7.9	, 8.7,	 8.1	, 9.1,	 6.9],
 	            ["사무",	 5.7	, 5.5	, 1.4	, 3	, 1.7	, 1.1	, 1.1,	 0.5	, 13.8,	 13.5	, 6,	 9.4	, 7.1	 ,7.8,	 8	, 9.6,	 4.7],
 	            ["서비스판매"	, 6.3	, 5.3	, 0.9	, 1.8	, 2.2	, 1.5,	 0.4,	 0.2	, 13.5,	 14.9	, 5.3	, 10.1	, 5.7	, 8.2,	 7.1,	 11.2	, 5.4],
 	            ["농어업",	 13.3	, 3.4	, 1.5,	 5.3	, 10.1	, 1.9	, 0.8,	 0.4	, 16	, 5.8	, 1.5	, 4.8	, 3.2	, 12.8,	 5.3	, 8	 ,5.7],
 	            ["기능노무",	 6	, 4.2	, 1.5	 ,2.4	, 1.1	, 1.7,	 1	, 0.5,	 13.8	, 9.8	, 5.5	, 13,	 5.8	, 11.3,	 10.7,	 7.9	, 3.8]
            ]
   

  export default {
    name: 'Job',
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
         columns: datas,
         type: "bar"
            
         },
         bar: {
      padding: 2,
      radius: {
      ratio: 0.5
    }
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
        background-color:#414040;
        width:1200px;
        height:600px;
        fill:aliceblue;
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
