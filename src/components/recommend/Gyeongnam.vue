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
            title: '거제와 통영의 절경 속으로',
            content: '거제 포로수용소 유적공원은 한국전쟁 당시 17만여 명의 포로들이 생활했던 곳에 자리하고 있다. 구조라 해수욕장에선 남해의 여유로움을, 신선대 전망대에서는 남해의 호탕함을 느낄 수 있다. 통영수산과학관은 통영의 전통어선인 통구밍이를 비롯해 고대부터 어로생활에 사용해왔던 다양한 선박의 모형을 전시해 두었다. 아시아 최초의 해저터널도 놓치기 아까운 볼거리다',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/54/213054_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=5c9e43c7-3edb-4e2b-84c2-e05a3a790d33',
            value: 4.5},
          {
            title: '거제도에서만 볼 수 있는 명소 코스',
            content: '거제도하면 조선업의 도시다. 그래서 외국인도 많고 이국적인 풍경을 이루는 국제도시다. 배를 건조하는 거대한 과정을 만나는 것은 벅찬 체험이 될 것이다. 자녀와 함께라면 꼭 둘러보자. 사시사철 푸른 동백 숲에는 특이한 소리를 내는 팔색조가 서식하는 곳으로 유명하다. 거제에서만 볼 수 있는 몽돌해변과 옛 어민들의 생활상을 볼 수 있는 어촌민속관도 어린이들에게는 좋은 공부가 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/76/2367576_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=0590b20f-2d7c-416a-a2d5-c0dfea2d2b9f',
            value: 4},
          {
            title: '“해금강이 전부인 줄 알았지?”...거제에서 배우는 역사',
            content: '국내에서 제주 다음으로 큰 섬 거제는 해금강의 비경과 풍광 좋은 해안이 밀집한 자연관광지로 정평이 나 있다. 그런데 의외로 역사탐방의 장소로도 활용 가치가 높다. 한국전쟁 당시 가장 큰 규모였던 거제도 포로수용소를 비롯해 우암 송시열을 주벽으로 한 조선시대 유현들을 배향하는 반곡서원, 5만여 점 전시물을 바탕으로 5~60년대 풍경을 재현한 해금강테마박물관까지. 한 번쯤 아이들 손을 잡고 거제의 역사를 되짚어보는 것도 의미 있는 일이 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/59/1609959_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=c2e10238-4998-402d-a69b-bc3dcf4b8841',
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

