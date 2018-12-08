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
            title: '호남지역의 유적지 돌아보기',
            content: '유적지를 본다는 것은 그 지역의 땅과 하늘과 숲에 묻힌 역사를 함께 보는 것이다. 따라서 이 코스는 이야기가 담긴 걷기코스라 할 수 있겠다. 특히 광주호 호수생태원은 자연생태학습장이며 시민들의 휴식공간이다. 자연과 역사를 동시에 누려보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/74/824574_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=29e62d84-41e1-47b8-a72b-19d96c7ca80a',
            value: 4.5},
          {
            title: '신나는 광주패밀리랜드 눈썰매장에서 하루를 즐겁게...',
            content: '호남지역에서 가장 긴 광주패밀리랜드 눈썰매장에서 하루 즐기는 코스다. 거리는 얼마 되지 않지만 겨울을 맞은 개구쟁이들에게 이만한 코스가 없다. 이 썰매장은 봄, 여름, 가을엔 물썰매장으로 겨울엔 눈썰매장으로 사계절 즐길 수 있는 곳으로 하루 종일 썰매를 타다 지치면 패밀리랜드로 이동해서 놀 수도 있고, 저녁에는 오리요리 거리로 이동해 소진한 체력을 보충해 보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/86/1946486_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=f11819b3-61dd-4060-b02f-36b18868fff3',
            value: 4},
          {
            title: '광주의 예술가거리와 번화한 금남로',
            content: '번화한 광주를 둘러볼 좋은 코스다. 호수생태공원의 아름다움 전경을 거닐고 남도 예술의 진수가 숨 쉬는 예술의 거리, 가장 번화한 젊은이의 거리 금남로 쏘다니기도 즐거운 볼거리를 제공할 것이다. 겨울이라면 기나긴 지하상가 쇼핑도 좋겠다. 광주는 잘 보존된 한옥가옥이 많다. 최승효 가옥도 그중의 하나다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/77/566677_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=7ce47fca-b3b7-48e9-a6e0-1d8b2e495f02',
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

