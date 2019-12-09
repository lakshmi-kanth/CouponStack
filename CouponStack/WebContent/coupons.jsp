<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
body{
	font-family: 'Montserrat', sans-serif;
	margin: 5% 10%;
}

input[type=text] {
color: dodgerblue;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
}

input[type=submit]{
background-color: royalblue;
color: white;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
border:none;
pointer: cursor;
}

th{
	background-color: black;
	color: white;
}
table, th, td {
	border: 1px solid black;
	text-align: center;
}
table {
	width: 100%;
}
</style>
</head>
<body>

<form action="Srch" method="get">
	<input type="text" name="query">&nbsp;&nbsp;&nbsp;
	<input type="submit">
</form><br><br>

<table>
<tr>
	<th>Coupon Id</th>
	<th>Company Id</th>
	<th>Coupon code</th>
	<th>Coupon Type</th>
	<th>Discount</th>
	<th>Discount Type</th>
	<th>Validity From</th>
	<th>Validity To</th>
</tr>	
<c:forEach items="${couponlist}" var="z">
<tr>
	<td>${z.getCouponId()}</td>
	<td>${z.getCompanyId()}</td>
	<td>${z.getCouponCode()}</td>
	<td>${z.getCouponType()}</td>
	<td>${z.getDiscount()}</td>
	<td>${z.getDiscountType()}</td>
	<td>${z.getValidityFrom()}</td>
	<td>${z.getValidityTo()}</td>
</tr>
</c:forEach>
</table>
</body>
</html>