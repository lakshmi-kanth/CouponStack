<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Montserrat|Notable|Trocchi&display=swap" rel="stylesheet">
<title>Coupons Page</title>
<style type="text/css">
	ul{
		font-size: 0.9rem;
		padding: 1rem;
	}
	
	#disc-mes{
		border: 1px solid darkgoldenrod;
		padding: 0px 3px;
		border-radius: 5px;
		color: darkgoldenrod;
		text-align: center;
		margin: 0 1.5rem;
		font-size: 0.9rem;
	}
	#disc-val{
		font-size: 2.2rem;
		text-align: center;
		font-family: 'Bungee Shade', cursive;
		color: navy;
		
	}
	#disc-des{
		text-align: center;
		margin: 1rem;
	}
	
	
	.part-1{
		text-align: center;
	}
	.card{
		margin: 0.6rem 0;
	}
	
	body{
	font-family: 'Montserrat', sans-serif;
	margin: 0 10%;
}

input[type=text] {
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
margin: 0.8rem 1rem 0 0;
}

input[type=submit]{
background-color: tomato;
color: white;
padding: 0.2rem 0.5rem;
font-family: 'Montserrat', sans-serif;
font-size: 1rem;
border:none;
pointer: cursor;
}

h1{
	font-family: 'Trocchi', serif;
}

</style>
</head>
<body>

<div class="container"><br><br>
<h1>Coupons</h1>
<form action="Query" method="get">
	<input type="text" name="comp">
	<input type="submit" value="Search">
</form><br><br>

<div class="row">
<c:forEach items="${couponlist}" var="z">
<div class="col-sm-12 col-md-4">
		<div class="card bg-light">
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<div id="disc-val">${z.getCpnVal()}</div>
					<div id="disc-mes">${z.getDisMes()}</div>
					<div id="disc-des">${z.getDisDes()}</div>
				</div>
				<div class="col-sm-12 col-md-6">
					<ul>
						<li>Payvia ${z.getPayVia()}</li>
						<li>Min order - Rs.${z.getMoa()}</li>
						<li> ${z.getFreq()}times/day</li>
					</ul>
				</div>
			</div>
		    <button type="button" class="btn btn-primary btn-sm btn-block">Open</button>
		</div>
	</div>
	</div>
</c:forEach>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>