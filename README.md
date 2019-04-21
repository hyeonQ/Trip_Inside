# my-app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Run your tests
```
npm run test
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

<h1>Trip_Inside
==========
![image](/uploads/8d52f116c84ebb15ccb21f3be01f42e9/image.png)

Trip Inside는 지역별 추천 여행 코스, 날씨 및 국내 여행 관련 여러 통계자료를 제공하는 **웹 차트 시스템**입니다. <br> <br>

<h2>접속
-----------
---
접속 IP         :  221.141.139.16<br>
가동 시간     : 18:00 ~ 22:00 <br>
미가동 시 연락처 : 010-5110-2408 (이현규) <br><br>

현재 자취방에 포트포워딩이 제한되어 따로 연락주시면 시간을 맞춰서 서버를 열어두겠습니다.

<h2>사용기술
-----------
---
1. Docker
    - Apache2, Tomcat8, MySQL 컨테이너를 만드는데 사용되었다.
    - Apache2 & Tomcat8 Dockerfile

    ```
    FROM ubuntu:latest

    RUN apt-get update
    RUN apt-get install nano
    RUN apt-get install -y openjdk-8-jdk
    RUN apt-get clean

    ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    ENV CLASSPATH=$JAVA_HOME/lib/*:.
    ENV PATH=$PATH:$JAVA_HOME/bin
     ```
<br>

2. Billboard js
 - Statistics의 Month, Sex, Age, Job, Income, Academy 페이지를 작성하는데 사용하였다.
 - Axis의 x축은 category 타입으로 고정하고, Line, Scatter, Bubble, Bar    등 차트의 타입을 다양하게 하여 작성하였다.  
<br>
3. D3 js
    - 대한민국 지도를 그리기 위해 사용하였다.
    - topoJson을 이용해 대한민국 지형 정보를 담은 JSON 파일을 읽었다.
    - 지도를 그리기 위해 D3.geoPath의 메르카토르 지도 투영법 함수를 이용하였다.
<br><br>
3. WEB(Apache2) - WAS(Tomcat8) - DB (MySQL)
    ![image](/uploads/323d548311d32259abdbccd3d56a8895/image.png)
    -  3-tier 구조
    - Apache2와 Tomcat8 연동
        - mod_jk를 이용한 연동
    - tomcat8과 MySQL 연동
        - JDBC를 이용한 연동
    - MySQL의 사용
        - 회원정보 관리
        - 회원가입 시 회원정보 저장(INSERT) 및 로그인시 ID와 비밀번호 확인(SELECT)
<br><br>
7. Vue.js
 - Vue-Cli를 이용하여 Vue 프로젝트를 생성하였다.
 - Vuetify js를 사용하여 디자인을 쉽게 입히고 컴포넌트의 배치를 쉽게    할 수 있었다.
 - Axios를 사용하여 서버와의 통신을 가능하게 하였다.
 - Vue Router를 사용하여 여러 페이지들을 쉽게 라우팅 할 수 있었다.
 - Vuex를 사용하여 로그인 후 응답받은 사용자의 정보를 관리하였다.
<br><br>

<h3>기능 및 실행화면
-----------
---
1. 로그인 화면
![image](/uploads/a1cb0192dd42c0eb1a006f094d21dde2/image.png)
    + 정상적인 ID, PW를 입력 후, LOG-IN 버튼을 누르면 로그인 완료 후, 메인 화면으로 이동한다.
    + SIGN-UP 버튼을 누르면 SIGN-UP양식이 나타난다.
    + 주어진 양식을 작성 후, SUBMIT 버튼을 누르면 회원가입이 완료된다.
<br>
<br>
2. 메인 화면
![image](/uploads/1d2efd8bcb9a871da798de7799487f00/image.png)

    + 좌측 상단의 아이콘을 클릭하면 Drawer가 열리고 원하는 항목을 선택할 수 있다.
    + 항목은 Map, Statistics 두 가지이며 Map은 Recommend, Weather을, Statistics는      Mont, Sex, Age, Job, Income, Academy를 세부항목으로 갖고 있다.
    + Logout 버튼을 누르면 로그아웃 완료 후, 로그인 화면으로 이동한다.
<br>
<br>
3. Map
    1. Recommend
![image](/uploads/8fb2294539e9eb9ad2dd8198cbb0afe4/image.png)
        + 지도에서 지역을 선택하면 해당 지역의 추천여행코스를 볼 수 있다.
        + 더 알아보기를 누르면 해당 추천여행코스의 상세정보를 볼 수 있는 페이지가 뜬다.
<br>
    2. Weather
![image](/uploads/4360e2d07cc318a85b40a912ce931105/image.png)
        + 지도에서 지역을 선택하면 오늘부터 5일동안 해당 지역의 날씨 정보를 볼 수 있다. 
        + 드래그를 통해 지도를 움직일 수 있고 스크롤을 통해 지도를 확대/축소할 수 있다.
<br>
<br>
4. Statistics
    + 세부 항목 선택 시 해당 항목을 기준으로 분류된 여행 통계를 볼 수 있다.
    + 국가통계포털에서 제공하는 국내 여행 주요 방문지 통계를 토대로 작성되었다.
    <br>
        1. Month
![image](/uploads/9bca279cfc419d3342a5c8bcfed00609/image.png)
            + 시기에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 
    <br> 
        2. Sex
![image](/uploads/30b54c1594aadb182d9800bbac3e4b47/image.png)
            + 성별에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 
        <br>
        3. Age
![image](/uploads/328d92f36eee9e278c9049aefd135af6/image.png)
            + 연령에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 
        <br>
        4. Job
![image](/uploads/a69cdaee7b15c1b6310f7d80dede041a/image.png)
            + 직업에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 
        <br>
        5. Income
![image](/uploads/ad3ed1f2c93af05b29afdac3f329963e/image.png)
            + 수입에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 
        <br>
        6. Academy
![image](/uploads/21a169eb1ca760703713310c3ac981e0/image.png)
            + 학력에 따른 지역별 방문자 수를 볼 수 있다.
            + 차트 하단의 아이콘을 클릭하여 차트에 나타날 항목을 선택할 수 있다. 


