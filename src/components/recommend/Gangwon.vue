<template>
  <v-container>
        <v-layout column wrap align-center>
          
          <v-flex xs12 md5 offset-md2>
            <div v-for="post in posts" :key="post.title">
              <v-card class="my-3" hover>
                <v-card-media
                  class="white--text"
                  height="90px"
                  :src="post.imgUrl"
                >
                  <v-container fill-height fluid>
                    <v-layout>
                      <v-flex xs12 align-end d-flex>
                        <span class="headline">{{ post.title }}</span>
                      </v-flex>
                    </v-layout>
                  </v-container>
                </v-card-media>
                <v-card-text>
                  {{ post.content }}
                </v-card-text>
                <v-card-actions>
                  <v-rating
                     :value="post.value"
                    color="amber"
                     dense
                     half-increments
                     readonly
                     
                     size="20"
            ></v-rating>({{post.value}})
                  <v-spacer></v-spacer>
            
                  <v-btn flat class="blue--text" @click.stop="go(post.clickUrl)">더 알아보기</v-btn>
                </v-card-actions>
              </v-card>
            </div>
          </v-flex>
        </v-layout>
      </v-container>
  
</template>

<script>
    import * as d3 from 'd3';
    import {bb} from 'billboard.js'
    import Vue from "vue"
    import VueMomentJS from "vue-momentjs"
    import moment from "moment"
   
    export default {
    name: 'chart',
    
    data() {
      return { 
          posts: [
          {
            title: '동해바다를 굽어보는 강릉 7번 국도 여행',
            content: '동해바다를 끼고 있는 강릉은 푸른 바다와 아름다운 해변이 일품인 고장이다. 정동진은 해맞이 명소이자 드라마 &lt;모래시계&gt; 촬영지로 아직까지도 많은 사랑을 받고 있다. 정동진 주변으로는 통일공원, 하슬라아트월드, 썬크루즈리조트 등 휘몰아치는 바다를 내려다볼 수 있는 곳이 많다. 동해바다를 좀더 입체적으로 즐길 수 있는 여정이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/31/1581131_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/search/search_list.html?keyword=%EB%8F%99%ED%95%B4%EB%B0%94%EB%8B%A4%EB%A5%BC%20%EA%B5%BD%EC%96%B4%EB%B3%B4%EB%8A%94%20%EA%B0%95%EB%A6%89%207%EB%B2%88%20%EA%B5%AD%EB%8F%84%20%EC%97%AC%ED%96%89&temp=',
            value: 4.5},
          {
            title: '강릉 경포로 떠나는 누정 시·문학 기행',
            content: '예향의 도시. 강릉. 그곳에 가면 호수와 달, 이야기가 있다.강릉 경포에는 석양을 다독이는 호수와 강릉에서만 볼 수 있는 장대한 솔숲, 그리고 이야기가 있는 바다호숫길이 당신을 반긴다. 또한 경포호수에 뜨는 5개의 달을 알아가는 재미가 있으니 고즈넉한 저녁향기를 맡으며, 천천히 호수물결 속에 비치는 달을 느껴 보자.언젠가부터 한국에서 이국적인 곳을 찾아가는 것이 습관이 된 오늘. 한국에서 가장 한국 같은 어제. 한국관광공사와 강릉관광개발공사가 추천하는 경포에서의 하루를 소개한다',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/33/1185433_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=11dee056-8321-4c5b-8f47-195e8ce8a9fa',
            value: 4},
          {
            title: '“동굴아, 여름을 부탁해”...그늘 찾아 떠나는 삼척여행',
            content: '강원도 삼척은 하나의 거대한 천연동굴밭이다. 대이리 동굴지대에서만 10여개의 크고 작은 석회암 동굴이 발견됐는데 그중에는 동양 최대 규모를 자랑하는 유명 동굴, 환선굴도 있다. 웅장하고 기이한 동굴 내부를 구경하다 보면 어느새 무더위는 사라지고 경외감만 남는다. 세계 유명 동굴과 그 생태 등을 재현한 동굴신비관 역시 빼놓을 수 없는 구경거리다. 동굴탐험을 마치면 천혜의 풍광을 자랑하는 삼척의 해변과 산림도 느껴보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/40/2037140_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/search/search_list.html?keyword=%E2%80%9C%EB%8F%99%EA%B5%B4%EC%95%84,%20%EC%97%AC%EB%A6%84%EC%9D%84%20%EB%B6%80%ED%83%81%ED%95%B4%E2%80%9D...%EA%B7%B8%EB%8A%98%20%EC%B0%BE%EC%95%84%20%EB%96%A0%EB%82%98%EB%8A%94%20%EC%82%BC%EC%B2%99%EC%97%AC%ED%96%89&temp=',
            value: 3.8}
        ]
      }
    },
    
    methods: {
    go(url){
        location.href = url

    },
      async show(d){
        posts = this.post1;
        
      
      },
      
      }
    }
</script>

