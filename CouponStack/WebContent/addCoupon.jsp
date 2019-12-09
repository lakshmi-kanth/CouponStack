<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

th{
text-align: left;
padding: 0 2rem;
}

#heading {
	padding: 0 2rem;
	color: royalblue;
}

input[type=text] {
color: dodgerblue;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
}

input[type=date] {
color: purple;
text-align: center;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
}

input[type=submit]{
background-color: dodgerblue;
color: white;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
border:none;
pointer: cursor;
}
</style>
</head>
<body>
<h3 id="heading">Add Coupon to Database</h3>
<form action="AddCoupon">
<table>
<tr>
	<th>Company
	</th>
	<td><input type="text" name="comp">
	</td>
</tr>
<tr>
	<th>Coupon code
	</th>
	<td><input type="text" name="coup">
	</td>
</tr>
<tr>
	<th>Discount
	</th>
	<td><input type="text" name="disc">
	</td>
</tr>
<tr>
	<th>Discount Type
	</th>
	<td><input type="radio" name="disc-type" value="pcent">%<br>
	<input type="radio" name="disc-type" value="off">off
	</td>
</tr>
<tr>
	<th>Validity From
	</th>
	<td><input type="date" name="from">
	</td>
</tr>
<tr>
	<th>Validity To
	</th>
	<td><input type="date" name="to">
	</td>
</tr>
<tr>
	<th>Coupon Type
	</th>
	<td><input type="radio" name="coup-type" value="general">General<br>
	<input type="radio" name="coup-type" value="promo">Promotion
	</td>
</tr>
<tr>
	<th>
	</th>
	<td><br><br><input type="submit" value="Add">
	</td>
</tr>
</table>
	
</form>`
</body>
</html>