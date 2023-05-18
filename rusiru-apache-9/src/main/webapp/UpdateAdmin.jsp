<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
  form {
    width: 50%;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    font-family: Arial, sans-serif;
    
  }
  label {
    margin-bottom: 10px;
    font-weight: bold;
  }
  input[type="text"],
  input[type="password"] {
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    width: 100%;
    box-sizing: border-box;
    font-size: 16px;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String username=request.getParameter("uname");
String password=request.getParameter("pass");

%>

<form action="update" method="post">
Customer id<input type="text" name="cusid" value="<%=id%>" readonly><br>
Name<input type="text" name="name" value="<%=name%>"><br>
Email<input type="text" name="email" value="<%=email%>"><br>
Phone Number<input type="text" name="phone" value="<%=phone%>"><br>
User name<input type="text" name="uname" value="<%=username%>"><br>
Password<input type="password" name="pass" value="<%=password%>"><br>

<input type="submit" name="submit" value="Update My Data"><br>

</form>
</body>
</html>