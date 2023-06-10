<HTML>
	<head>
		
		<p align="right">
			<a href="logout.jsp"><button type="button" style="background-color: #ea7500; margin-top:20px ;">Logout</button></a>
			</p>
	</head>
    <BODY bgcolor="teal">
        <%@ page import="java.sql.*, java.util.*, java.net.*, 
   oracle.jdbc.*, oracle.sql.*, oracle.jsp.dbutil.*" %>


        <%
        String username = (String)session.getAttribute("name");
        %>
        <h1><font color="black"><center><%out.println("Welcome "+username);%></center></font></h1>
        
    
    </BODY>
</HTML>
    
</BODY>
</HTML>
<!DOCTYPE html>
<html>
<head>
	<title><center>Health Insurance Policy Details</center></title>
	<style>
		table {
			border-collapse: collapse;
			width: 80%;
			font-family: Arial, sans-serif;
			margin-top: 20px;
            margin-left: 100px;
            margin-right: 600px;
		}

		th {
			background-color:#ea7500;
			color:black;
			font-weight: bold;
			padding: 10px;
			text-align: center;
			vertical-align: top;
		}

		td {
			border: 1px solid #cccccc;
			padding: 10px;
			text-align: left;
			vertical-align: top;
		}

		tr {
			background-color:white;
		}
	</style>
</head>
<body>
	<h2> <center>Your Health Insurance Policy Details</center></h2>
	<table>
		<thead>
			<tr>
				<th>Policy Information</th>
				<th>Details</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Policy Number</td>
				<td>123456789</td>
			</tr>
			<tr>
				<td>Policyholder Name</td>
				<td><% out.println(username);%></td>
			</tr>
			<tr>
				<td>Policy Start Date</td>
				<td>01/01/2023</td>
			</tr>
			<tr>
				<td>Policy End Date</td>
				<td>12/31/2023</td>
			</tr>
			<tr>
				<td>Monthly Premium</td>
				<td>Rs 690</td>
			</tr>
			<tr>
				<td>Deductible</td>
				<td>Rs 1,000</td>
			</tr>
			<tr>
				<td>Coinsurance</td>
				<td>80/20</td>
			</tr>
			<tr>
				<td>Out-of-Pocket Maximum</td>
				<td>Rs 5,000</td>
			</tr>
			<tr>
				<td>Coverage Type</td>
				<td>Preferred Provider Organization (PPO)</td>
			</tr>
			<tr>
				<td>Provider Network</td>
				<td>XYZ Health Network</td>
			</tr>
			<tr>
				<td>Preventive Care</td>
				<td>Covered at 100%</td>
			</tr>
			<tr>
				<td>Hospitalization</td>
				<td>Covered at 80%</td>
			</tr>
			<tr>
				<td>Prescription Drugs</td>
				<td>Generic covered at 100%, brand-name covered at 80%</td>
			</tr>
		</tbody>
	</table>
</body>
</html>