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
                ["청소년",8.1,	 4.7	, 1.9,	 1.6	, 1.9	, 1.2	, 0.4	, 0.3,	 15.5	, 13.3	, 3.7,	 9.1,	 7.4,	 10.7,	 8.2,	 7.5	, 4.6],
                ["20대",7.5	, 6.5	, 1.4,	 3.4,	 1.5	, 1.7,	 0.8,	 0.1,	 15.9	, 12.5,	 2.9,	 7.7	, 7.1,	 8.3	, 6.1	 ,10.7,	 6],
                ["30대",6.4	, 7	 ,1.2,	 3.6,	 1.4,	 0.9	, 1.1	, 0.8,	 16.6,	 12.3	, 4.8,	 9.9,	 7	, 6.2,	 6.7	, 8.6,	 5.4],
                ["40대",5.4	, 4.8	, 1.3	, 2.2,	 1.5	, 1.1	, 0.8	, 0.5,	 13.6	, 14.8,	 6.6,	 9.2,	 6.2	, 10.3	, 9.3,	 8.3,	 4],
                ["50대",5.4	, 4.1	, 1,	 2.5,	 2.4	, 1.3	 ,0.5	, 0.3	, 11.9,	 13.9	, 4.9,	 10.4	, 6.7,	 8.5	, 9.9	 ,10.2,	 6.1],
                ["60대 이상",10.2	 ,4	 ,1.7	, 3.8,	 3.5,	 1.8,	 1.2	, 0.5	, 12.5,	 11.9	, 4.1,	 9.5	, 5,	 9.8,	 6.8,	 8.8,	 4.7]

            ]
   

  export default {
    name: 'Age',
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
         type: "line"
            
         },
          bar: {
      padding: 2
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
