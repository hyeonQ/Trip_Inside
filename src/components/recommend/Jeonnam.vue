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
            title: '자연 그대로의 아름다움을 느끼는 여수여행',
            content: '겨울에도 기온이 영하로 내려가지 않을 정도로 따뜻한 남쪽 나라 전라남도 여수(麗水)는 물이 좋다는 뜻을 가지고 있다. 봄에는 봄꽃이 만개하고, 가을에는 단풍이 물들고, 사시사철 아름다운 밤바다가 있는 여수에서 자연 그대로의 아름다움을 느껴보자!',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/89/678889_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=253080f4-bbaa-4196-bafe-4dc5c01b93f2',
            value: 4.5},
          {
            title: '남도의 풍류에 젖어드는 진도 의신사천마을 (웰촌)',
            content: '어깨춤이 덩실덩실, 엉덩이가 실룩실룩 흥겨운 민요 자락에 남도의 풍류를 즐길 수 있는 곳, 진도 의신사천마을이다. 고즈넉한 마을에서 하룻밤 묵으며 마을주민들과 함께 어울려 도척놀이와 북춤을 배워 볼 수 있다. 깊어가는 가을밤, 남도의 풍류에 젖어보자',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/11/195911_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=b2a92d78-0a0a-4659-9643-9214f39b0442',
            value: 4},
          {
            title: '옛 정취가 잠든 오래된 도시를 걷다.',
            content: '운동하면서 걸어도 좋고, 놀면서 걸어도 좋다. 자연과 과거가 공존하는 보기 드문 영암의 고즈넉한 정취는 건강하게 산책하기를 만든다. 그렇다고 정적인 코스는 아니다. 구림마을에서는 한옥 숙박도 가능하며 종이공예, 전통혼례, 짚풀공예, 물고기 잡기 등 다양한 놀이를 즐길 수 있어 아이와 함께 걸어도 즐거운 영암여행이 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/76/1607976_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=fefea69c-9b0f-4c50-86ec-fa49bb460fdc',
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

