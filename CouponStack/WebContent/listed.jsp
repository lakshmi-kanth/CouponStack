<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Main Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="sty1.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300&display=swap" rel="stylesheet">
        <style>
            body {
    margin: 0;
    font-family: 'Open Sans', sans-serif;
}

.nav-sec {
    font-family: 'Open Sans', sans-serif;
    margin: 0;
    padding: 1rem 16%;
    border-bottom: 1px solid gray;
}

.nav-sec div.part-1{
    display: inline;
    margin: 0 1rem;
    padding: 7px 10px;
}

.logo{
    letter-spacing: 2px;
    font-size: 1.2rem;
}


.nav-sec ul {
    list-style-type: none;
    display: inline;
}

.cont {
    padding: 1rem 16rem 0.5rem 16rem;
}

.but {
    border: 1px solid gray;
    font-family: 'Open Sans', sans-serif;
    font-size: 1rem;
    padding: 0.3rem 1rem;
    letter-spacing: 2px;
    cursor: pointer;
    outline: none;
}

.but:hover {
    box-shadow: 0 5px 6px -6px black;
}

.nav-sec div.part-1.nav-item{
    float: right;
}


.nav-sec div.part-1.nav-item:hover {
    background-color: gray;
    color: white;
    cursor: pointer;
}

input[type=text] {
    font-family: 'Open Sans', sans-serif;
    font-size: 1rem;
    border: 1px solid gray;
    padding: 8px 15px;
}

input[type=text]:focus {
    border: 1px solid black;
    outline: none;
}

.nav-sec div.part-1 input[type=text] {
    
}

.c {
    border: 1px solid gray;
    padding: 1rem 2rem;
    margin: 1rem;
}

.ta {
    display: inline;
}

.v {
    float: right;
}

.l ul li {
    float: left;
    display: block;
    padding-right: 3rem;
}

.s {
    margin-top: 1rem;
}

form {
	display: inline;
}

.th {
	color: blue;
	font-weight: strong;
}

.v {
	color: red;
}
        </style>
    </head>
    <body>
        <div class="nav-sec">
            <div class="part-1 logo">
                    couponcard
            </div>
            <div  class="part-1">
	            <form action="Query" method="get">
	            	<input type="text" name="comp">
	                <button class="but" action="Query">Search</button>
	            </form>
            </div>
            <div class="part-1 nav-item">
                About us
            </div>
            <div class="part-1 nav-item">
                Blog
            </div>
        </div>
        <div class="cont">
	        <c:forEach items="${couponlist}" var="z">
	            <div class="c">
	                <div class="t">
	                    <div class="th ta">
	                        ${z.getDisDes()}
	                    </div>
	                    <div class="v ta">
	                        ${z.getCpnVal()}<br>${z.getDisMes()}
	                    </div>
	                    <div class="l">
	                        <ul>
	                            <li>Payvia ${z.getPayVia()}</li>
								<li>Min order - Rs.${z.getMoa()}</li>
								<li> ${z.getFreq()}times/day</li>
	                        </ul>
	                    </div>
	                </div><br>
	                
	            </div>
	        </c:forEach>
        </div>
    </body>
</html>