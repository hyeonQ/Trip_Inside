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
            title: '동대문 투어하기',
            content: '동대문은 서울에서도 매우 특이한 볼거리가 많은 상가문화 밀집지역이다. 최근에는 핫이슈를 뿌리며 동대문디자인플라자가 들어와 볼거리를 더하고 있다. 뿐만 아니라 이 지역은 먹자골목 등 오래된 명물 맛집이 많아 먹는 재미도 있으니, 서울에 오면 한번쯤은 동대문 투어에 나서보자.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/51/710251_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=93aa1202-e82b-4da8-a80c-206ab0e34c36',
            value: 4.9},
          {
            title: '청계천을 돌아 경복궁에서 인사동까지',
            content: '한양의 중심지였던 경복궁과 청계천 일대는 서울에서 빠질 수 없는 관광지다. 어느 계절이나 매력적인 도심의 하천 청계천을 여유롭게 산책하면서 간간히 보이는 서울의 역사유적을 살펴보는 재미가 쏠쏠할 것이다. 누가 뭐래도 서울에 오면 한번쯤 들려보아야 할 경복궁과 민속박물관, 그리고 북촌 한옥마을과 인사동은 걷기에 좋은 코스가 되어줄 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/40/1570340_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=8d6aa774-c134-4690-9328-ca6583cf9b6e',
             value: 4.3
     
          },
          {
            title: '서울의 놀거리, 볼거리를 하루에',
            content: '성북동의 고즈넉한 미술관에서 수준 높은 고미술을 관람하고, 서울 사람이라면 한번은 가봤을 롯데월드에서 한나절 신나게 놀이기구를 즐겨보자. 그리고 저녁쯤 남산 서울타워에서 야경을 보며 서울여행을 마무리하면 후회 없는 하루가 될 것이다.',
            imgUrl: 'http://tong.visitkorea.or.kr/cms/resource/52/1545552_image2_1.jpg',
            clickUrl: 'https://korean.visitkorea.or.kr/detail/cs_detail_cos.html?cotid=29040ebe-1f45-4a6a-be88-1cd6f193bcc2',
             value: 4.0
     
          }
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

