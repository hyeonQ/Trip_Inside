<%@ page import = "java.sql.*" %>
<%
    Connection conn = null;
    Statement st = null;

    String myUrl = "jdbc:mysql://http://172.16.184.243:3306/trip_db";

    Class.forName("com.mysql.jdbc.Driver"); 
    conn = DriverManager.getConnection(myUrl, "root", "1111");
    st = Conn.createStatement();

    String sql;
    sql = "INSERT INTO User(UserID, UserPW, nickname, birth)\
            VALUES('test1', password('t'),'test1', DATE('19950223'));";

    ResultSet rs = st.executeQuery(sql);
    System.out.println(sql);
    rs.close();
    st.close();
    conn.close();
     
%>