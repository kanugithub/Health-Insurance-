<HTML>
    <BODY bgcolor="teal">
        <%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*, oracle.jsp.dbutil.*" %>
   
        <%
        int n1=Integer.parseInt(request.getParameter("t1"));
        if(n1==1){%>
        <%@ include file="indi.html" %> 
        <%}%><%else if(n1>=2 &&  n1<=5 ){%> 
        <%@ include file="two.html" %> 
        <%}else if(n1>5){%>
        <%@ include file="morethan5.html" %> 
        <%}else if(n1<=0){%>
        <%@ include file="reenter.html" %>
        <%}%>   
        %> 
    
    </body>
</html>