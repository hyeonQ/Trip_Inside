<template>
  <div class="hello"> 
    <div class="d3"></div>
    <div id="chart"><WeatherChart :item="item" ref="wc" /></div>
    <div id="exp">
      <h3></h3>
      <h2> - 드래그를 통해 지도를 움직일 수 있습니다.</h2>
      <h2> - 줌을 통해 지도를 확대/축소할 수 있습니다.</h2>
      <h2> - 지역을 클릭하면 해당 지역 날씨와 온도를 확인할 수 있습니다.</h2>
    </div>
  </div>
</template>

<script>
  import * as d3 from 'd3';
  import * as topojson from 'topojson';
  import Vue from "vue"
  import VueMomentJS from "vue-momentjs"
  import moment from "moment"
  import WeatherChart from "./WeatherChart.vue"

  Vue.use(VueMomentJS, moment)

  export default {
    name: 'hello',
    data() {
      return { 
        region: 0,
        item: 0
      }
    },
    components:{
      WeatherChart
    },
    mounted() {
      this.draw()
    },
    methods: {
      CodeReturn() {
        return this.region;
      },
      draw() {   
        const koreaMap = require('../assets/skorea-provinces-topo.json'); 
        const geojson = topojson.feature(koreaMap, koreaMap.objects['skorea-provinces-geo']);
        var ref = this

        const width = 600;
        const height = 600;
        const svg = d3
        .select('.d3')
        .append('svg')
        .attr('width', width).attr('height', height); 
        
        const projection = d3.geoMercator()
        .scale(1)
        .translate([0, 0]);  

        const places = svg.append("g").attr("id", "places");

        const path = d3.geoPath().projection(projection);
        const bounds = path.bounds(geojson);
        const widthScale = (bounds[1][0] - bounds[0][0]) / width; 
        const heightScale = (bounds[1][1] - bounds[0][1]) / height; 
        const scale = 1 /Math.max(widthScale, heightScale);
        const xoffset = width/2 - scale * (bounds[1][0] + bounds[0][0]) /2 + 10; 
        const yoffset = height/2 - scale * (bounds[1][1] + bounds[0][1])/2 + 80; 
        const offset = [xoffset, yoffset];
        projection.scale(scale).translate(offset);

        const map = svg.append('g')
        .selectAll('path').data(geojson.features)
        .enter().append('path') 
        .attr('fill', '#79d156')
        .attr('stroke', '#5e320e')
        .attr('d', path)
        .on("click", function(d){        
          switch (d.properties.NAME_1) {
            case 'Gyeonggi-do' :  ref.region = 1841610;
                                  break;
            case 'Seoul' :  ref.region = 1835847;
                                  break;
            case 'Incheon' :  ref.region = 1843561;
                                  break;
            case 'Gangwon-do' :  ref.region = 1876101;
                                  break;
            case 'Chungcheongnam-do' :  ref.region = 1845105;
                                  break;
            case 'Chungcheongbuk-do' :  ref.region = 1845106;
                                  break;
            case 'Daejeon' :  ref.region = 1835224;
                                  break;
            case 'Gyeongsangbuk-do' :  ref.region = 1841597;
                                  break;
            case 'Daegu' :  ref.region = 1835329;
                                  break;
            case 'Jeollabuk-do' :  ref.region = 1845789;
                                  break;
            case 'Jeollanam-do' :  ref.region = 1845788;
                                  break;
            case 'Gwangju' :  ref.region = 1841808;
                                  break;
            case 'Gyeongsangnam-do' :  ref.region = 1902028;
                                  break;        
            case 'Jeju' :  ref.region = 1846266;
                                  break;       
            case 'Busan' :  ref.region = 1838519;
                                  break;  
            case 'Ulsan' :  ref.region = 1833742;
                                  break;                                                           
          }
          ref.item = ref.region
          ref.$refs.wc.show(ref.item)
        });   

        const text = svg.selectAll("text")
        .data(geojson.features.filter(function(d) { return d.properties.name; }))
        .enter()
        .append("text")
        .attr("transform", function(d) { return "translate(" + path.centroid(d) + ")"; })
        .attr("dy", ".35em")
        .attr("class", "region-label")
        .text(function(d) { return d.properties.name; });
        

        const zoomed = () =>{
          map.attr('transform', d3.event.transform) ;
        }
        const zoom = d3.zoom().scaleExtent([1, 8]).on('zoom', zoomed)
        svg.call(zoom)
      }
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
   .d3{
     
    padding-top:80px;
    height: 800px;
    width: 600px;
    float: left;
   }
   #chart{
    padding-top:80px;
    background-color: #414040;
    height: 600px; 
    width: 600px; 
    float: left
   }
  path{
    stroke:rgb(31, 17, 17);
    fill:#cebfbf;
  }
   path:hover{
     fill:#631212;
     stroke:#15160a;
   }
   #exp{
    padding-top: 600px;
    height: 200px;
    widows: 1200px;
   }
   h2{
     font-size: 18px;
     text-align: left;
   }
   h3{
     padding-top: 20px;
   }

</style>