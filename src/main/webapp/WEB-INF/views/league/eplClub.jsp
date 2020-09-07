<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>EPL Club</title>
<Style>
	tr > th{
		text-align:center;
	}
	body{
		display:flex;
		min-height:100vh;
		flex-direction:column;
	}
	main{
		flex: 1 0 auto;
	}
</Style>
</head>
<body>
<main>
	<div class="row">
		<div class="card">
			<div class="card-image">
				<c:forEach var="PlayerVO" items="${eplPlayer}" begin="0" end="0">
					<img src="../resources/images/stadium/${PlayerVO.stadium}.jpg" width="100%" height="700" style="margin-top:-10px;">	
				</c:forEach> 
				<span class="card-title">			
					<c:forEach var="PlayerVO" items="${eplPlayer}" begin="0" end="0">
					  	${PlayerVO.stadium}
					</c:forEach> 
				</span>
			</div>
		</div>
		<div class="col s12">
			<ul class="tabs tabs-fixed-width">
				<li class="tab col s3"><a href="#forwards" style="color:#ed0a62;">Forwards</a></li>
				<li class="tab col s3"><a href="#midfileders" style="color:#0089ec;">Midfileders</a></li>
				<li class="tab col s3"><a href="#defenders" style="color:#28c22e;">Defenders</a></li>
				<li class="tab col s3"><a href="#goalkeepers" style="color:#e99b2d;">GoalKeepers</a></li>
			</ul>
		</div>
		<div>
			<div class="col s12" id="forwards">
				<table class="striped centered" id="fwPlayer"></table>
			</div>
			<div class="col s12" id="midfileders">
				<table class="striped centered" id="mfPlayer"></table>
			</div>
			<div class="col s12" id="defenders">
				<table class="striped centered" id="dfPlayer"></table>
			</div>
			<div class="col s12" id="goalkeepers">
				<table class="striped centered" id="gkPlayer"></table>
			</div>
			
		</div>			
	</div>
</main>
</body>
</html>
<link rel="stylesheet" href="../resources/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/materialize/css/materialize.min.css">
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="../resources/materialize/js/materialize.min.js"></script>
<script src="../resources/materialize/js/ect_materialize.js"></script>
<script src="../resources/js/eplClub.js"></script>
<script src="../resources/underscore/underscore-min.js"></script>
<link rel="stylesheet" href="../resources/flag-icon-css-master/css/flag-icon.min.css">
<%@ include file="../include/footer.jsp" %>