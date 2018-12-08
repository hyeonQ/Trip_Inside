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
            title: '강화도 비운의 역사길을 걷다',
            content: '초지대교를 건너 만나는 초지진부터 덕진진과 광성보를 거쳐 갑곶돈대까지 가는 길은 구한말 병인양요, 신미양요의 외세침략으로 치열한 격전이 벌어졌던 곳이다. 초지진에는 당시 포탄의 흔적이 있는 소나무가 남아 있을 정도다. 강화나들길 2코스로 강화도의 국방방어유적을 차근차근 둘러보는 여정이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/38/1577838_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=d92213ac-90e2-4945-9431-51694485da9d',
            value: 4.8},
          {
            title: '강화도령 첫사랑 길',
            content: '강화도령 첫사랑길은 원범이 강화도에서의 귀양살이 중 강화도 처녀 봉이와 나누었던 풋풋한 사랑의 흔적을 찾아가는 도보 여행길이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/42/1575642_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=35d2c0de-06a9-4ac2-bf29-f8fb66a1745b',
             value: 4.4
     
          },
          {
            title: '강화도의 애환이 서린 교동도를 밟다',
            content: '교동도의 역사는 꾀나 오래됐다. 고구려 때부터 신라를 거쳐 이웃의 강화도와 석모도의 간척 해안선을 가졌듯 오늘날의 교동도가 되었다. 규모가 그리 크지는 않지만 우리나라 처음으로 공자를 모신 향교여서 매해 유림들이 찾아 재를 지낸다고 한다. 교동읍성의 대룡시장을 가보는 것도 좋다. 무엇보다 해안선 경계를 위한 돈대들을 둘러보는 것만으로도 의미가 있는 하루가 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/61/1890661_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=672a726c-89d9-4382-9115-842afc0e5f2a',
             value: 3.7
     
          }
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

