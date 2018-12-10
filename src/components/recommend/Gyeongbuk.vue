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
            title: '경주 최고의 문화유산을 만나다',
            content: '경주 토함산 자락의 불국사와 석굴암이 우리나라를 대표하는 문화유산 중 하나라는 사실은 의심할 여지가 없다. 세계문화유산에 등재되기도 한 불국사와 석굴암은 경주에서 꼭 둘러봐야 하는 필수 답사 코스로 신라시대 불교문화의 정수를 만날 수 있는 곳이다. 석굴암 너머 장항리사지에서는 통일신라시대 걸작으로 평가받는 오층석탑을 만날 수 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/30/1200930_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=0339331f-f8fc-42b3-b972-e9d681108534',
            value: 4.5},
          {
            title: '울릉도에서 독도에 서다',
            content: '울릉도 기행의 시작점인 이곳에서 도동항 좌·우로 나 있는 해안절벽 산책로를 따라가 보면 화산암으로 이루어진 해벽에 부딪히는 파도와 깊은 해식동굴 아래의 투명한 바닷물을 바라보고 걷다보면 가을철 털 머위꽃이 군락을 이루는 행남 등대에 서서 바다를 보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/45/1893645_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=5f4583dd-0bf5-4515-9937-804d3fb0f19d',
            value: 4},
          {
            title: '봉화의 볼거리와 먹거리를 찾아',
            content: '봉화의 달실 마을은 먹거리가 풍부하다. 물론 주변 경관까지 볼거리도 빠지지 않는다. 이곳은 금강송 춘향목의 고장으로 소나무도 많고 송이 버섯도 많이 난다. 또 한 태백산 자락을 넘어가면 대게의 고장 영덕과 울진이고 주변에는 다덕 약수탕과 청량산 등 볼 곳이 다양하니 가족여행에 좋은 코스다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/16/893216_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=61a3b95e-163e-42cc-a16d-470304f39ade',
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

