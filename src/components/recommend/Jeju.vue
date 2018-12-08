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
            title: '제주도 세계자연유산 탐방 3 코스',
            content: '여행은 제주도의 절묘한 자연경관과 특별한 맛을 느낄 수 있는 여행이다. 세계자연유산으로 등재된 만장굴과 돌과 더불어 살아 사는 제주인의 삶이 오롯이 녹아든 제주돌문화공원을 방문하고, 제주도만의 민속자연을 볼 수 있는 민속자연사박물관을 돌아보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/96/573996_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=1923378b-3e45-4ae9-8610-c8235636ba5e',
            value: 4.5},
          {
            title: '제주도 세계자연유산 탐방 1 코스',
            content: '여행은 제주도의 절묘한 자연경관과 특별한 맛을 느낄 수 있는 여행이다. 가을 억새의 향연이 펼쳐지는 산굼부리와 유네스코 세계자연유산에 등록된 성산일출봉 등 제주의 숨은 절경을 찾아 나선다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/68/780468_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=2ad8679f-607f-4a28-b197-89164503f485',
            value: 4},
          {
            title: '바다와 풀밭이 맞닿은 푸른 세상 속으로, 제주 온평~표선 올레',
            content: '걸으면서 제주도의 아름다운 풍경과 문화를 접하는 데 올레만큼 좋은 건 없다. 3코스 온평~표선 올레는 오름을 넘고 바다와 벗하며 걷는 길이다. 통오름과 독자봉에서 제주 오름이 지닌 고유의 멋을 느끼고, 김영갑 갤러리에서 사진에 담긴 제주의 하늘과 바다, 오름, 바람을 감상한다. 신풍신천 바다목장의 너른 초원과 눈이 부시게 파란 표선해비치해변의 바다는 감탄을 자아내는 풍경이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/05/1618205_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=db6090c8-aefa-4858-81e4-bfd68b014142',
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

