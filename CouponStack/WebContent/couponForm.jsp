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
	}
	input[type=text] {
	padding: 0.2rem 0.5rem;
	font-family: 'Montserrat', sans-serif;
	font-size: 1rem;
	}
	
	input[type=radio] {
	
	}

	input[type=submit]{
	background-color: royalblue;
	color: white;
	padding: 0.2rem 1rem 0.4rem 1rem;
	font-family: 'Montserrat', sans-serif;
	font-size: 1.2rem;
	border:none;
	cursor: pointer;
	}
	
	input[type=reset]{
	background-color: gray;
	color: white;
	padding: 0.2rem 1rem 0.4rem 1rem;
	font-family: 'Montserrat', sans-serif;
	font-size: 1.2rem;
	border:none;
	cursor: pointer;
	}
	
	input[type=date] {
	padding: 0.2rem 0.5rem;
	font-family: 'Montserrat', sans-serif;
	font-size: 1rem;
	}
	
	th{
		padding: 0 2rem;
	}
	td{
		padding: 0.3rem 0;
	}
	
	h1{
		padding: 0 2rem;
	}
	
</style>
</head>
<body>
<h1>Add a coupon</h1><br><br>
<form action="ReadCoupon">
	<table>
		<tr>
			<th>Payto
			</th>
			<td><input type="text" name="payto">
			</td>
			<th>Payvia
			</th>
			<td><input type="text" name="payvia">
			</td>
		</tr>
		<tr>
			<th>Coupon Code
			</th>
			<td><input type="text" name="co-code">
			</td>
			<th>Coupon Value
			</th>
			<td><input type="text" name="co-val">
			</td>
		</tr>
		<tr>
			<th>Discount
			</th>
			<td><input type="text" name="disc">
			</td>
			<th>Discount Type
			</th>
			<td><input type="radio" name="disc-type" value="off">off
			    <input type="radio" name="disc-type" value="cashback">cashback
			</td>
		</tr>
		<tr>
			<th>Discount Description
			</th>
			<td><input type="text" name="disc-desc">
			</td>
			<td>Minimum Order Amount
			</td>
			<td><input type="text" name="moa">
			</td>
		</tr>
		<tr>
			<th>Validity
			</th>
			<td><input type="radio" name="validity" value="limited period offer">Limited period offer<br>
				<input type="radio" name="validity" value="validity date">Validity Date
			</th>
			<th>Validity Date
			</td>
			<td><input type="date" name="validity-date">
			</td>
		</tr>
		<tr>
			<th>Day Frequency
			</th>
			<td><input type="text" name="day-freq">
			</td>
			<th>Month Frequency
			</th>
			<td><input type="text" name="mon-freq">
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td><br><input type="checkbox" name="sel-customers" value="true">Selected Customers
				<br><input type="checkbox" name="sel-restaurants" value="true">Selected Restaurants
				<br><input type="checkbox" name="sel-cities" value="true">Selected Cities
			</td>
		</tr>
		<tr>
			<th>
			</th>
			<td>
			</td>
			<th>
			</th>
			<td><br><br><input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear">
			</td>
		</tr>
	</table>
</form>	
</body>
</html>