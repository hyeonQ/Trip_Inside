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
            title: '충남 해안으로 떠나는 겨울 맛 기행',
            content: '겨울 서해안은 맛있다. 꽃게를 필두로 새조개와 굴 등이 그 뒤를 잇고 찬바람에 살이 단단해진 바닷고기는 그 어느 때 보다 달디 달다. 찬바람과 함께 떠나는 겨울 서해안 맛기행, 이 계절에만 즐길 수 있어 더욱 소중하다. 홍성과 보령, 충남이 품은 서해안 따라 떠나는 맛기행. ‘맛’은 기본, 겨울 바다 구경은 보너스다. 이 여행은 찬바람이 불어오는 12월 즈음부터 봄이 오기 전까지 즐길 수 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/29/1449529_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=fad107ac-aceb-425b-a3c5-b5532ba599f6',
            value: 4.5},
          {
            title: '천안의 볼거리를 찾아 가족여행',
            content: '천안에는 아이들과 함께 체험하기 좋은 박물관들이 많다. 고려시대와 조선시대 향촌 생활을 담아 놓은 천안박물관과 우리나라 우체국 역사를 볼 수 있는 우정박물관 그리고 농촌체험 마을까지 여름 방학을 맞아 알찬 시간을 갖기에 이만한 코스가 없을 것이다. &lt;br /&gt;&lt;br /&gt;출처 : 머물수록 매력있는 충청',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/10/1784710_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=a5fd78d8-3330-45fa-9a3d-f70c00482b58',
            value: 4},
          {
            title: '온천의 고장에서 즐기는 스파와 캠핑',
            content: '캠핑과 스파를 동시에 즐겨보자. 낭만적인 카라반 캠핑을 하며 야간 스파를 즐길 수도 있다. 도고파라다이스 스파에는 독특하게도 카라반 캠핑장 시설이 함께 있어 인기다. 세계꽃식물원과 영인산자연휴양림, 피나클랜드 등 자연을 누리며 체험도 할 수 있는 공간도 인근에 함께 자리하고 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/85/593785_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=09df8eab-fdb0-407b-a530-fafaef1f65ea',
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

