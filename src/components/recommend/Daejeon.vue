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
            title: '숲에서 힐링, 온천에서 힐링',
            content: '가족과 함께 힐링의 시간을 누리자. 메타세콰이아 숲이 울창한 장태산자연휴양림에서 삼림욕을 즐기고 백제시대부터 명성을 떨쳐 온 유성온천에서 온천욕을 즐긴다. 온천지구 안에는 24시간 족욕을 즐길 수 있는 족욕 체험장이 있어 누구나 무료로 이용할 수 있다. 우리나라 136개 성씨의 유래를 만나는 뿌리공원도 함께 둘러보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/85/608085_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=2b12e2fc-0ca3-4200-a182-b8ff74ad0373',
            value: 4.5},
          {
            title: '힐링의 명소, 황톳길을 걸어보다',
            content: '시원하게 하늘로 뻗은 나무 사이를 걷고 두발로 황톳길을 밟으며 마음의 건강을 찾는 시간을 가져보자. 중부권 최대 규모의 한밭수목원은 도심 속에서 푸른 자연을 벗할 수 있는 공간이다. 계족산성 아래 자리한 장동산림욕장은 14.5km에 달하는 황톳길을 품고 있어 특별한 삼림욕을 할 수 있다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/68/1092668_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=a4e1033a-8e1f-402c-b342-90d0f210ec76',
            value: 4},
          {
            title: '대전 중구의 젊은 거리에서 옛터민속박물관까지',
            content: '말하자면 대전의 문화가 집중된 번화가를 돌아보는 코스다. 관광지로서도 유서 깊은 대전역과 젊은이들의 거리 스카이로드를 중심으로 대전역 가락국수를 맛보는 재미도 빼먹지 말자. 가난한 예술가들이 자리 잡은 것으로 시작됐다는 대흥동 문화 예술동네를 둘러보고 이런 분위기와는 완전 다른 동구의 옛터민속박물관을 즐겨보자. 전혀 다른 향취를 맛볼 수 있을 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/16/1958516_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=88ea4628-84af-4c9b-a3dd-f54c2c3cd8aa',
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

