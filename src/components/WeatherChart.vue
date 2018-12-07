<template>
  <div id="wchart" ref="child">  
  </div>
</template>

<script>
    import * as d3 from 'd3';
    import {bb} from 'billboard.js'
    import Vue from "vue"
    import VueMomentJS from "vue-momentjs"
    import moment from "moment"

    export default {
    name: 'chart',
    props: ['item'],
    data() {
      return { 
      }
    },
    methods: {
      async show(d){
        var regkorname="";
        var weat = ["날씨", 0,0,0,0,0];
        var x_date = ["x",0,0,0,0,0];
        var temp_max = ["최고 기온",-100,-100,-100,-100,-100];
        var temp_min = ["최저 기온",100,100,100,100,100];
        var today = this.$moment(new Date()).format('YYYYMMDD')
        var endday = this.$moment(new Date()).add(4, 'days').format('YYYYMMDD')
        var ApiResult;

        switch(d){
          case 1841610: regkorname = "경기도"; break;
          case 1835847: regkorname = "서울"; break;
          case 1843561: regkorname = "인천";  break;
          case 1876101: regkorname = "강원도"; break;
          case 1845105: regkorname = "충청남도"; break;
          case 1845106: regkorname = "충청북도"; break;
          case 1835224: regkorname = "대전"; break;
          case 1841597: regkorname = "경상북도"; break;
          case 1835329: regkorname = "대구"; break;
          case 1845789: regkorname = "전라북도"; break;
          case 1845788: regkorname = "전라남도"; break;
          case 1841808: regkorname = "광주"; break;
          case 1902028: regkorname = "경상남도"; break;
          case 1846266: regkorname = "제주도"; break;
          case 1838519: regkorname = "부산"; break;
          case 1833742: regkorname = "울산"; break;
        }

        const axios = require('axios');
        Vue.prototype.$http = axios;
        if (d != 0){
          const baseURI = 'http://api.openweathermap.org/data/2.5/forecast?id='+d+'&appid=91ad33b0544a254f8c6a52de4a4204fb'
          try{
            ApiResult = await this.$http.get(baseURI)
            this.skills = ApiResult
          }
          catch(err){
            console.log(err)
          }
        }

        var kv = 273.15;
        var j =1;

        while(j < 6){
          let i = (j-1)*8;
          x_date[j] = ApiResult.data.list[i].dt_txt.substring(0,10);
          weat[j] =ApiResult.data.list[i].weather[0].main;
          for(var k =0; k<8; k++){
            if(ApiResult.data.list.length > i+k){
              if(temp_max[j] < Math.round(ApiResult.data.list[i+k].main.temp_min - kv))
                temp_max[j] = Math.round(ApiResult.data.list[i+k].main.temp_max - kv);
              
              if(temp_min[j] > Math.round(ApiResult.data.list[i+k].main.temp_min - kv))
                temp_min[j] = Math.round(ApiResult.data.list[i+k].main.temp_min - kv);
            }
          }
          j+=1;
        }       
        for(var i =1; i<6;i++)
          x_date[i] += "\n"+weat[i]

        var chart = bb.generate({
          padding: {
            top : 100
          },
          data: {
            x: "x",
            columns: [
              x_date,
              temp_max,
              temp_min,
            ],
            labels:true,
            show:true
          },
          title: {
            text: "< "+regkorname + " 날씨 >",
            position: "top-left"
          },
          colors: {
            "최저 기온": "#00ff00",
            "최고 기온": "#0000ff",
          },
          padding:{
            top:30,
            bottom:20
          },
          axis: {
            x: {
              type: "category"
            },

            y: {
              tick: {
                format: function(d) {return d+"°C";}
              }
            }
          },
          
          bindto: "#wchart"
        });

      }
      }
    }
</script>

<style>
  .bb-line{
    stroke:red;
    fill:rgba(0, 255, 255, 0);
  }
  .bb-region{
    fill:blueviolet;
  }
  .bb-title{
    font-size:20px;
  }
  #wchart{
    fill: rgb(255, 255, 255);
    width: 550px;
    height: 500px;
  }
</style>

