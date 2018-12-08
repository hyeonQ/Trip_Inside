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
            title: '영도의 바다를 만나다',
            content: '부산의 명물 영도다리를 건너 바닷길을 따라 태종대를 찾아간다. 절영해안산책로는 파도 소리를 친구 삼아 바다의 절경을 감상하며 걸을 수 있는 길이다. 해안도로가 끝나는 곳에서 다시 시작되는 솔숲은 시원한 그늘이 되어 도보 여행자를 안내한다. 영도 등대와 어우러진 태종대까지 걸으며 부산의 바다를 느껴보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/87/1071387_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=5fbdee52-1838-4f1e-9826-c2a251be8ff1',
            value: 4.7},
          {
            title: '영화 마니아를 위한 로맨틱 여행',
            content: '부산하면 빼놓을 수 없는 것이 바로 ‘영화’. &lt;무방비 도시&gt;, &lt;태풍&gt;, &lt;파랑주의보&gt; 등 영화를 보면서 눈여겨보았던 여행지가 부산에 있다. 바다와 함께 펼쳐지는 아름다움 풍경을 마주하면 누구나 영화 속 주인공이 된다. 부산에 있는 것만으로도 누구나 흥겨워지는 영화촬영지 순례. 생각만 해도 즐겁지 않은가!',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/45/2368445_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=d5e4bf1c-8c4d-4bec-becd-93fc9b101a72',
             value: 4.4
     
          },
          {
            title: '대나무 울창한 아홉산 숲으로',
            content: '부산의 아홉산숲은 영화 &lt;대호&gt;의 촬영지이기도 하다. 그만큼 대나무가 울창해 원시의 자연을 그대로 느낄 수 있는 위풍당당한 곳이다. 그러나 핵심은 국립부산과학관에 있다. 놀면서 배우고 즐길 수 있는 재미난 박물관이라 아이들과 함께라면 더욱 즐거운 코스가 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/34/2371134_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=d78969a8-ff8c-49ca-89b6-2ad3ea7c4977',
             value: 3.6
     
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

