<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>LaLiga</title>
<Style>
	tr > th{
		text-align:center;
	}
</Style>
</head>
<body>
<main>
	<div class="parallax-container" style="margin-left-1px;">
		<div class="parallax"><img src="../resources/images/laliga.jpg"/></div>
	</div>
	<div class="section white">
		<h2 class="header" style="text-align:center; margin-left:-75px">LaLiga</h2>
		<p class="grey-text text-darken-3 lighten-3" style="text-align:center; margin-left:-75px">Spanish Premier League. The Strongest league</p>
		<div class="row container">
			<div class="row">
				<div class="col s11">
					<ul class="tabs tabs-fixed-width">
						<li class="tab col s3"><a class="active" href="#table"><i class="fa fa-trophy">&nbsp;</i>Table</a></li>
						<li class="tab col s3"><a href="#fixtures"><i class="fa fa-calendar">&nbsp;</i>Fixtures</a></li>
						<li class="tab col s3"><a href="#records"><i class="fa fa-bar-chart-o">&nbsp;</i>Records</a></li>
					</ul>
				</div>
				<div id="table" class="col s12">
					<table class="striped centered">
						<tr>
							<th>Rank</th>
							<th>Club</th>
							<th>Points</th>
							<th>Matches</th>
							<th>Win</th>
							<th>draw</th>
							<th>lose</th>
							<th>GF</th>
							<th>GA</th>
							<th>GD</th>
						</tr>
						<c:forEach items="${table }" var="ClubVO" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>${ClubVO.club }</td>
							<td>${ClubVO.win*3 + ClubVO.draw }</td>	
							<td>${ClubVO.win + ClubVO.draw + ClubVO.lose }</td>	
							<td>${ClubVO.win }</td>	
							<td>${ClubVO.draw }</td>	
							<td>${ClubVO.lose }</td>
							<td>${ClubVO.gf }</td>	
							<td>${ClubVO.ga }</td>	
							<td>${ClubVO.gf - ClubVO.ga }</td>				
						</tr>
						
						</c:forEach>
					</table>
				</div>
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
<%@ include file="../include/footer.jsp" %>