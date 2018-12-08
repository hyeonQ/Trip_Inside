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
            title: '바오밥나무 아래서 어린왕자 만나볼까?',
            content: '1979년 개원한 한택식물원은 멸종위기의 희귀식물부터 다양한 들꽃까지 9,000여 종의 식물들이 살아가는 국내 최대의 식물원으로 어린왕자에 나오는 바오밥나무를 만날 수 있는 호주관이 명소다. 용인사극촬영장으로 잘 알려진 MBC드라미아와 함께 농경문화와 체험을 즐길 수 있는 용인농촌테마파크도 가족과 함께 즐기기 제격이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/70/1589970_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=b96c099b-aab4-4664-925c-ce00842ab939',
            value: 4.5},
          {
            title: '가평에서 만나보는 유럽, 이색체험 여행',
            content: '해외여행을 꿈꾸어 보지만 시간과 여건상 해외여행을 떠날 수 없을 때 국내에서 만나 볼 수 있는 유럽 테마 여행지로 떠나보는건 어떨까?경기도 가평에는 프랑스의 문화를 체험할 수 있는 쁘띠프랑스와 스위스의 작은 마을 축제를 주제로한 에델바이스 스위스테마파크 까지.가평에서 만나보는 유럽 테마 여행지로 여행을 떠나보자!',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/61/1985061_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=13a56166-6628-449e-bd3d-19b6c5250c7d',
            value: 4},
          {
            title: '파주에서 즐길 수 있을 만한 좋은 여행',
            content: '파주에는 볼거리 놀거리가 많다. 모산목장에서 아이들과 낙농체험을 하고 헤이리 마을에서 다양한 예술과 문화가 주는 향연 거리를 걸어보고, 절로 숙연해지는 임진각관광지를 차분하게 돌아보는 것도 뜻 깊은 체험 여행이 될 듯하다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/38/1913938_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=3851455e-1628-482a-b3de-c886b4f6120b',
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

