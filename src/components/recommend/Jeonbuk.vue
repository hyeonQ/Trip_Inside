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
  
   
    export default {
    name: 'chart',
    
    data() {
      return { 
          posts: [
          {
            title: '꼼꼼하게 둘러보는 전주 한옥마을과 주변 명소들',
            content: '검은 기와와 돌담의 한옥들이 모여 있는 전주한옥마을은 전통 문화와 역사를 만날 수 있는 공간이다. 한옥마을에서 꼭 방문해야 하는 명소들을 모았다. 경기전과 전동성당을 지나 오목대로 오르는 길목마다 탐방지들이 기다리고 있다. 전주를 대표하는 맛 비빔밥을 맛보려면 전주 객사가 있는 중심가로 나와야 한다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/65/1605565_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=641498f2-b023-4f9d-b84c-480127021390',
            value: 4.5},
          {
            title: '전북 고창 온천해수찜',
            content: '전북 고창은 도자기로 이름이 높은 지역이었으며 지금은 수박으로 유명하다. 유네스코가 지정한 고인돌 산지와 고창읍내에 있는 석천온천은 프랑스의 루르드 온천에 이어 세계 두 번째로 발견된 게르마늄 온천이다, 구시포 해수욕장의 긴 백사장과 바닷물의 염도가 높아 피부병에 좋은 모래찜질과 해수찜도 체험할 수 있는 코스다. 특히 물 빠진 바닷가에선 바지락을 잡는 재미도 누릴 수 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/29/1602929_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=c54a6fdf-95c5-4ec6-b8d1-4fecb455c7f4',
            value: 4},
          {
            title: '먹고~ 사고~ 즐기고~ 군산 쓰리고 여행!',
            content: '군산은 근대역사 여행지로 유명하다. 이러한 군산에선 근대역사 이외에도 맛 여행지로도 적격이다. 군산에서 맛보는 짬뽕, 호떡, 빵, 그리고 콩나물국밥까지...군산에서 맛있는 음식도 먹고, 시장에서 특산품도 사고, 관광까지 즐기는 군산 쓰리고 여행을 떠나보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/66/1971366_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=ab8fe63b-a3e4-4d8a-b06e-4442f897fee9',
            value: 3.8}
        ]
      }
    },
    
    methods: {
    go(url){
        location.href = url

    },
      async show(){
       
        
      
      },
      
      }
    }
</script>

