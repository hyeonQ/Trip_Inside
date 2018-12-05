<template>
  <div class="hello"> 
    <div class="d3"></div>
    <div class="app"></div>
  </div>
</template>

<script>
  import * as d3 from 'd3';
  import * as topojson from 'topojson';

  export default {
    name: 'hello',
    data() {
      return { 
      }
    },
    mounted() {
      this.draw()
    },
    methods: {
      draw() {   
        const koreaMap = require('../assets/skorea-provinces-topo.json'); 
        const geojson = topojson.feature(koreaMap, koreaMap.objects['skorea-provinces-geo']);
        var ref = this

        const width = 500;
        const height = 500;
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
        .attr('d', path)
        .on("click", function(d){
          console.log(d.properties.NAME_1);
          ref.show(d.properties.NAME_1);
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
      },
      show(d){
        console.log(d)
      }
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
   .d3{
    height: 800px;
    width: 600px;
    float: left;
   }
   .app{
    height: 800px; 
    width: 600px; 
    float: left
   }
   path{
     fill:#79d156;
     stroke:#5e320e;
   }

   path:hover{
     fill:#cbce3a;
     stroke:#15160a;
   }

   text{
     fill:rgba(255, 255, 255, 1);
   }


</style>