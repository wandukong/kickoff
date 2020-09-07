<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>Transfer Market</title>
<Style>
	body{
		display:flex;
		min-height:100vh;
		flex-direction:column;
	}
	main{
		flex: 1 0 auto;
	}
	tr > th{
		text-align:center;
	}
	.d1{
		float:left;
		margin-right:7px;
		padding:18px;
	}
	.d2{
		float:left;
		padding:18px;
		margin-top:15px;
		background-color:#f5b926;
		width:500px;
		height:400px;
	}
	.d3{
		overflow:hidden;
		margin-top:15px;
		padding:18px;
		background-color:#de3e69;
		width:500px;
		height:400px;
	}
	.d4{
		overflow:hidden;
		padding:18px;
		background-color:#1da3ca;
		width:1000px;
		height:400px;
	}
</Style>
</head>
<body>
<main>
	<div class="d1">
		<table class="striped centered" id='datatable'>
			<tr>
				<th>Name</th>			
				<th>age</th>
				<th>Club</th>
				<th>Price</th>
			</tr>
			<c:forEach items="${transListAll }" var="TransferVO">
			<tr>
				<td>${TransferVO.name }</td>	
				<td>${TransferVO.age }</td>	
				<td>${TransferVO.club }</td>
				<td>£${TransferVO.price }M</td>
			</tr>				
			</c:forEach>
		</table>
	</div>
	<div class="d2" id="expenseTop"></div>
	<div class="d3" id="expensePercentage"></div>
	<div class="d4" id="expenseSum"></div>
</main>
</body>
</html>
<link rel="stylesheet" href="../resources/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/materialize/css/materialize.min.css">
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="../resources/materialize/js/materialize.min.js"></script>
<script src="../resources/materialize/js/ect_materialize.js"></script>
<script src="../resources/js/transfer.js"></script>
<script src="../resources/underscore/underscore-min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-more.js"></script>
<%@ include file="../include/footer.jsp" %>