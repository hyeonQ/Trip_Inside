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
            title: '대구에 있는 놀이터와 동네 구석구석 찾기',
            content: '대구의 놀이명물 이월드와 이월드 전망대를 볼 수 있는 코스다. 데이트 코스로도 손색없고, 아이와 함께라면 즐거운 하루가 될 것이다. 시끌벅적하게 놀았다면 고즈넉한 성화사와 고풍스런 벽화가 그려진 마비정 벽화마을을 구석구석 돌아보는 것으로 끝내면 좋겠다. 대구만의 숨은 동네특색을 살펴볼 좋은 기회가 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/57/1573857_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=283970f3-467a-4070-9b02-bddf687dc5b1',
            value: 4.5},
          {
            title: '대구 서부시장의 구석구석 맛집을 찾아',
            content: '이 코스는 대구 중심지에서 맛있는 것을 찾아 즐기는 코스다. 다양한 먹거리와 업그레이드된 재래시장의 정취와 시골읍내의 정서가 그대로 묻어있는 달성공원 북비산네쪽의 아나고골목을 돌아보자. 회로 먹어도 좋고 구워 먹어도 좋은 아나고의 고소한 냄새가 절로 식욕을 자극할 것이다. 주변의 달성공원과 선교사스윗즈주택의 고풍스러움으로 눈요기하는 것도 즐거움의 한 덤이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/02/2366102_image2_1.png',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=da76b9b2-912f-4919-9abb-4e6db36131fb',
            value: 4},
          {
            title: '대구 문화체험 코스',
            content: '어린이와 함께하기 좋은 코스다. 대구의 문화유적지 신숭겸장군 유적지와 그림 같은 동화사를 둘러보고 시민안전테마파크에서 안전체험 교육을 할 수 있다. 요즘 같이 사고 많은 시대 미리미리 안전을 대비한 자녀교육은 매우 필수적이다. 우리나라 고유의 방짜유기 박물관을 둘러보는 것도 재미있을 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/48/1326548_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=7f30d178-e07e-423d-9300-078f37b5444e',
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

