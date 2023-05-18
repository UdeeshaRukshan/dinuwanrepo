<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
        
<% 
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FeedbackDB","root","ubiataya122");
          Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from Feedback") ; 
%>
    
    
<!DOCTYPE html>
<html>
<head>
<style>
  table {
    border-collapse: collapse;
    width: 80%;
  }

  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #f2f2f2;
  }
</style>
<meta charset="UTF-8">
<title>display feedback</title>
</head>
<body>
<TABLE BORDER="1">
      <TR>
      <TH>Feedback ID</TH>
      <TH>Customer Name</TH>
      <TH>Feedback Type</TH>
      <TH>Feedback</TH>
       </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getInt(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
             </TR>
      <% }
      connection.close();%>
       
</TABLE>

</body>
</html>