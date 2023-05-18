<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    text-align: left;
    padding: 8px;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  a {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  }
  
  input[type=button] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  }
  
  input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

</style>

<meta charset="UTF-8">
<title>Display Information</title>
</head>
<body>

<table>
<c:forEach var="cus" items="${cusDetails}">

<c:set var="id" value="${ cus.id}"/>
<c:set var="name" value="${ cus.name}"/>
<c:set var="email" value="${ cus.email}"/>
<c:set var="phone" value="${ cus.phone} }"/>
<c:set var="username" value="${ cus.username}"/>
<c:set var="password" value="${ cus.password}"/>
<tr>
<td>Customer ID
</td>
<td>
	${cus.id}
</td>
</tr>

<tr>
<td>
Customer Name
</td>
<td>
${cus.name}
</td>
</tr>

<tr>
<td>
Customer Email
</td>
<td>
${cus.email}
</td>
</tr>

<tr>
<td>Customer Phone
</td>
<td>
${cus.phone}
</td>
</tr>

<tr>
<td>Customer user name
</td>
<td>
${cus.username}
</td>
</tr>

<tr>
<td>Customer Password
</td>
<td>
${cus.password}
</td>
</tr>
	

</c:forEach>
</table>

<c:url value="updatecustomer.jsp" var="Admupdate">

<c:param name="id" value="${id} "/>
<c:param name="name" value="${name} "/>
<c:param name="email" value="${email} "/>
<c:param name="phone" value="${phone} "/>
<c:param name="username" value="${uname} "/>
<c:param name="password" value="${pass} "/>

</c:url>

<a href="${Admupdate}">
<input type="button" name="update" value="Update My Data">
</a>  

<c:url value="deletecustomer.jsp" var="Admdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<a href="${Admdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
</body>
</html>
