<HTML>
    <BODY bgcolor="green">
        <%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*, oracle.jsp.dbutil.*" %>

        <%
        String s1 = request.getParameter("t1");
        String s2 = request.getParameter("t2");
        String s3 = request.getParameter("t3");
        String s4 = request.getParameter("t4");
        String s5 = request.getParameter("t5");
        String s6 = request.getParameter("t6");
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system","admin");
            PreparedStatement pst = cn.prepareStatement("insert into ins values(?,?,?,?,?,?)");
            pst.setString(1, s1);
            pst.setString(2, s2);
            pst.setInt(3, Integer.parseInt(s3));
            pst.setDouble(4, Double.parseDouble(s4));
            pst.setInt(5, Integer.parseInt(s5));
            pst.setString(6, s6);
            int x = pst.executeUpdate();
            if (x > 0) {%>
                <%@ include file="login1.html" %> 
    
           <%}
        } catch (ClassNotFoundException e) {
            out.println("Driver Problem" + e.getMessage());
        } catch (SQLException e) {
            out.println("Record with Given id already exist" + e.getMessage());
        } catch (Exception e) {
            out.println("data insertion problem" + e.getMessage());
        }
        out.close(); 
        %>
        <h1><font color="red"><%out.println("data received");%></font>
        </h1>
        <h1><font color="red"><%out.println(s1);%></font>
        </h1>
    </BODY>
</HTML>