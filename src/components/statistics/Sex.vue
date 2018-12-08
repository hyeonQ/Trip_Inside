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
      ["x", "서울",
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
                    "제주"  ],
                ["남자", 6.8,	 4.8,	 1.2	 ,2.7	, 1.7	, 1.4	, 0.9,	 0.4	, 14.2,	 13.4,	 4.9,	 9.9,	 6.5,	 9.1,	 7.6,	 9.5,	 4.8],
                ["여자",7.1	 ,5.5	, 1.5,	 3.2,	 2.4	, 1.3	, 0.7	, 0.5	, 14,	 13	, 4.7	, 9,	 6.3,	 8.6,	 8.2,	 8.7,	 5.4]

            ]
   

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
           x:"x",
         columns: datas,
         type:"bar",
          groups: [
            ["남자","여자"]
          ]  
         },
         
        axis: {
             x: {
                 type: "category",
               // categories: category
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
