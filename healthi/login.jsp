<HTML>
    <BODY bgcolor="teal">
        <%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*, oracle.jsp.dbutil.*" %>
   

        <%
        
        String s1 = request.getParameter("name");
        String s5 = request.getParameter("pass");
        session.setAttribute("name",s1);
    
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system","admin");
           
            Statement st = cn.createStatement();

            ResultSet rs = st.executeQuery("select * from ins where name='" + s1 + "' and password = '" + s5 + "'");
            
            if (rs.next()) {%>
                
    <h1><font color="black"><center><%out.println("Welcome "+s1);%></center></font>
        <h1><center>Your Are Succrssfully Login</center></h1>

            <%@ include file="f.html" %>
            <%}%><%else{
                %>
            <%@ include file="index1.html" %>
            <%}%>
         <%       
        } catch (ClassNotFoundException e) {
            out.println("Driver Problem" + e.getMessage());
        } catch (SQLException e) {
            out.println(e.getMessage());
        } catch (Exception e) {
            out.println("data insertion problem" + e.getMessage());
        }
        out.close();
        
        %>
        
        
    </BODY>
</HTML>