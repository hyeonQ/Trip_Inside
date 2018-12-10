<%-- 
    로그인 페이지
    req : id, password
    res : (403 or 200), name 
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
    st = Conn.createStatement();


    // 해당 아이디, 비밀번호가 DB에 있는 지 확인
    // SELECT  COUNT(*)
    // FROM    User
    // WHERE   UserID = id AND UserPW = password(pw)

    String id = request.getParameter("id"); 
    String pw = request.getParameter("pw"); 


    sql =   "SELECT  COUNT(*) as cnt "+
            "FROM    User "+
            "WHERE   UserID=''"+id+"'UserPW=''"+pw+"'';";
    rs = st.executeQuery(sql);

    if (rs.getInt("cnt") > 0){

    // 해당 아이디, 비밀번호를 가진 이름 반환
    // SELECT  nickname
    // FROM    User
    // WHERE   UserID = id
        sql =  "SELECT   nickname " +
               "FROM     User " +
               "WHERE    UserID=''"+id+"'';";
        
        rs = st.executeQuery(sql);
        String name = rs.getString("nickname");
        response.setHeader("name", name);
        response.setStatus(200);

    }
    else{
        // 해당 아이디와 비밀번호가 없음
        // 금지코드 반환
        response.setStatus(403);
    }

    rs.close();
    st.close();
    conn.close();
     
%>