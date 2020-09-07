<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>EPL Round</title>
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
	.d1{
		float:left;
		margin-right:7px;
		padding:18px;
		background-color:#59b1f6;  
	}
	.d2{
		float:right;
		margin-left:7px;
		background-color:#ffb5b4;
		color:white;
	}
	.d3{
		overflow:hidden;
		margin-left:7px;
		padding:18px;
		background-color:#d53eb0;
		color:#5e8818;
	}
</Style>
</head>
<body>
<main>
	<div class="d1">
		<table class="centered">
			<c:forEach items="${eplRound }" var="RoundVO">
			<c:if test="${RoundVO.homeAway == NULL }">
				<tr>
					<td>${RoundVO.position }</td>	
					<td>${RoundVO.backNum }</td>	
					<td>${RoundVO.name }</td>
					<c:if test="${RoundVO.goal != NULL }">
						<td><i class="fa fa-soccer-ball-o">&nbsp;</i>${RoundVO.goal}</td>
					</c:if>
					<c:if test="${RoundVO.goal != assist }">
						<td><i class="fa fa-gift">&nbsp;</i>${RoundVO.assist}</td>
					</c:if>
					<c:if test="${RoundVO.yellowCard == 1 }">
						<td><i class="fa fa-stop" style="color:yellow">&nbsp;</i>${RoundVO.yellowCard}</td>
					</c:if>
					<c:if test="${RoundVO.yellowCard == 2 }">
						<td><i class="fa fa-stop" style="color:yellow"></i><i class="fa fa-stop" style="color:red;margin-left:-6px;">&nbsp;</i>${RoundVO.yellowCard}</td>
					</c:if>
					<c:if test="${RoundVO.redCard != NULL }">
						<td><i class="fa fa-stop" style="color:red">&nbsp;</i>${RoundVO.redCard}</td>
					</c:if>
					<c:if test="${RoundVO.inTime != NULL }">
						<td><i class="fa fa-arrow-up">&nbsp;</i>${RoundVO.inTime}</td>
					</c:if>
					<c:if test="${RoundVO.outTime != NULL }">
						<td><i class="fa fa-arrow-down">&nbsp;</i>${RoundVO.outTime}</td>
					</c:if>
				</tr>		
			</c:if>		
			</c:forEach>
		</table>
	</div>
	<div class="d2">
		<table class="centered">
			<c:forEach items="${eplRound }" var="RoundVO">
			<c:if test="${RoundVO.homeAway == 1 }">
				<tr>
					<td>${RoundVO.position }</td>	
					<td>${RoundVO.backNum }</td>	
					<td>${RoundVO.name }</td>
					<c:if test="${RoundVO.goal != NULL }">
						<td><i class="fa fa-soccer-ball-o">&nbsp;</i>${RoundVO.goal}</td>
					</c:if>
					<c:if test="${RoundVO.goal != assist }">
						<td><i class="fa fa-gift">&nbsp;</i>${RoundVO.assist}</td>
					</c:if>
					<c:if test="${RoundVO.yellowCard == 1 }">
						<td><i class="fa fa-stop" style="color:yellow">&nbsp;</i>${RoundVO.yellowCard}</td>
					</c:if>
					<c:if test="${RoundVO.yellowCard == 2 }">
						<td><i class="fa fa-stop" style="color:yellow"></i><i class="fa fa-stop" style="color:red;margin-left:-6px;">&nbsp;</i>${RoundVO.yellowCard}</td>
					</c:if>
					<c:if test="${RoundVO.redCard != NULL }">
						<td><i class="fa fa-stop" style="color:red">&nbsp;</i>${RoundVO.redCard}</td>
					</c:if>
					<c:if test="${RoundVO.inTime != NULL }">
						<td><i class="fa fa-arrow-up">&nbsp;</i>${RoundVO.inTime}</td>
					</c:if>
					<c:if test="${RoundVO.outTime != NULL }">
						<td><i class="fa fa-arrow-down">&nbsp;</i>${RoundVO.outTime}</td>
					</c:if>
				</tr>		
			</c:if>		
			</c:forEach>
		</table>
	</div>
	<div class="d3">
		<img src="../resources/images/ground.jpg" width="800" height="650"/>
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