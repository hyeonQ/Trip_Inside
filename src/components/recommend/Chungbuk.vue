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
            title: '아슬아슬 올라 아찔한 풍광에 감동하다',
            content: '도담삼봉, 충주호 등 언제나 변함없는 비경이 가득한 코스다. 활력과 힐링이 어우러지는 청풍호를 중심으로 유람선과 번지점프 등을 즐겨보다. 국내에서 제일 높은 번지점프를 할 수 있는 기회다.&lt;br /&gt;&lt;br /&gt;출처 : 머물수록 매력있는 충청',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/43/1727243_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=6bf278c2-7a53-4bf8-947e-db9282b7f3b2',
            value: 4.5},
          {
            title: '충주 토속 음식과 향기로운 청명주를 찾아',
            content: '마음이 통하는 사람들끼리 향기로운 술한잔은 인생을 더욱 깊이 있게 하는 만드는 시간이 될 것이다. 충주의 맛깔스러운 음식들과 달콤한 사과와인으로 시작해 청명주까지... 따뜻하고 근사한 여행이 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/73/2050573_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=61e64043-c559-47bd-9198-8c3ff0ade6fc',
            value: 4},
          {
            title: '충북 단양 팔경을 찾아 떠나요',
            content: '남한강이 영월군으로부터 동서로 관류하고 있고, 지리산으로 이어져 있으며, 북쪽에는 태백산맥이 뻗어 있다. 기암과 계곡이 만남을 이루는 사인암을 보고, 도예체험이 가능한 방곡도예촌을 거쳐 장회유람선이 안겨주는 절경과 도담삼봉과 석문 등 단양 팔경의 장관을 볼 수 있는 멋진 코스다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/22/689422_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=5b8a78be-fd37-461f-8921-1edc4b6733bf',
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

