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
            title: '울산 앞바다 몽돌해변',
            content: '울산의 바다는 강원도의 바다와는 약간 다르다. 산과 바다를 끼고 있는 바닷길이 특히 절경이라 드라이브 코스로 으뜸으로 치지만 몽동의 조약돌이 있는 깨끗한 해변은 가슴까지 시원하게 한다. 주변의 싱싱한 해산물과 입심 좋은 아낙들의 횟거리와 매운탕은 최고라 할 수 있다. 특히 이곳 특유의 멸치회는 별미니 꼭 맛보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/14/1358514_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=e4fe8f35-386c-4400-8410-6eac7719b707',
            value: 4.5},
          {
            title: '울산이 ‘고래의 고장’이라 불리는 이유를 아시나요?',
            content: '울산은 아주 오랜 옛날부터 고래를 바로 가까이에서 볼 수 있었던 고장이며, 고래가 사람들의 생활과 밀접했던 고장이다. 신석기시대부터 청동기시대에 이르기까지 수천 년에 걸쳐 선사시대 사람들이 바위에 그림을 그린 반구대암각화에는 돌고래, 향유고래, 솔피, 큰고래, 혹등고래, 흰긴수염고래 등 모두 6종의 고래가 그려져 있다. 고래어업의 전초기지였던 장생포 앞바다는 고래박물관, 고래생태체험관, 고래문화마을 등 고래와 관련된 문화가 모여 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/97/2020497_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=a08b4de8-7966-46ed-ab69-60087c884166',
            value: 4},
          {
            title: '넘실대는 푸른 바다 속, 고래 찾으러 떠나자!',
            content: '고래잡이가 금지되기 전까지 장생포는 포경업의 중심지였다. 고래잡이는 사라졌지만 고래를 테마로 한 박물관과 생태체험관이 있어 고래와 친밀함을 느끼는 시간을 선물한다. 특히 고래바다여행선을 타면 고래들이 뛰놀던 장생포 앞바다를 돌아 볼 수 있다. 대왕암과 울기등대를 함께 만날 수 있는 대왕암공원도 해안 명소다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/08/217708_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=605aa4ec-1498-46e4-8ee7-f2f586f2bd92',
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

