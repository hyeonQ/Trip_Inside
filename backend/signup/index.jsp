<%-- 
    회원가입 페이지
    req : id, password, name, birth
    res : 성공 또는 실패
 --%>

<%@ page import = "java.sql.*" %>
<%
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;

    String myUrl = "jdbc:mysql://192.168.99.100:3306/trip_db";
    String sql;

    Class.forName("com.mysql.jdbc.Driver"); 
    conn = DriverManager.getConnection(myUrl, "root", "1111");
    st = conn.createStatement();


    // 해당 아이디가 DB에 있는 지 확인
    // SELECT  COUNT(*)
    // FROM    User
    // WHERE   UserID = id;

    String id = request.getParameter("id"); 
    String pw = request.getParameter("pw"); 
    String name = request.getParameter("name");
    String birth = request.getParameter("birth");
  
    res.setStatus("id", id);
    sql =  "SELECT  COUNT(*) as cnt "+
           "FROM    User "+
           "WHERE   UserID='"+id+"';";
    rs = st.executeQuery(sql);
    rs.next();
    int cnt = rs.getInt("cnt");
 
    // 해당 아이디가 있다면 403 반환
    if (cnt > 0){
        response.setStatus(403);
    }

    // 없다면 DB에 계정 추가
    else{
        // 해당 테이블에 계정 정보 insert
        // INSERT INTO User(UserID, UserPW, nickname, birth)
        // VALUES          ( id, password(pw), name, birth)

        sql = "INSERT INTO User(UserID, UserPW, nickname, birth) "+
              "VALUES ('"+id+"', password('"+pw+"'), '"+name+"', DATE("+birth+"));";

        int cnt2 =st.executeUpdate(sql);

        // Insert 성공
        if(cnt2 > 0){
            response.setStatus(200);
        }
        // Insert 실패
        else{
            // 서버 오류
            response.setStatus(500);
        }
        

    }

    rs.close();
    st.close();
    conn.close();
     
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>params result</title>
</head>
<body>
    <%= request.getParameter("id") %><br>
    <%= request.getParameter("pw") %><br>
</body>
</html>

