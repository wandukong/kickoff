<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Kick Off</title>
	<style>
		body{
			display:flex;
			min-height:100vh;
			flex-direction:column;
		}
		main{
			flex: 1  auto;
		}
	</style>
</head>
<body>
	<main>
		<div class="row">
			<div class="col s12 m7">
				<div class="card" style="Width:500px; height:670px; float:left; width:33.3%;">
					<div class="card-image" style="width:365px;">
						<img src="./resources/images/roanldo.jpg"/>
						<span class="card-title">Cristiano Ronaldo</span>
					</div>
					<div class="card-content">
						<p>Cristiano Ronaldo is a professional soccer player who has set records while playing for both Manchester United and Real Madrid.</p>
					</div>
					<div class="card-action">
						<a href="./league/laliga">La Liga</a>
					</div>
				</div>
				<div class="card" style="Width:500px; height:600px; float:left; width:33.3%;">
					<div class="card-image" style="width:365px;">
						<img src="./resources/images/manchesterunited.jpg"/>
						<span class="card-title">Manchester United</span>
					</div>
					<div class="card-content">
						<p>Jose Mourinho believes his job at Manchester United will get easier next season as he settles into a second campaign at Old Trafford.</p>
					</div>
					<div class="card-action">
						<a href="./league/epl">EPL</a>
					</div>
				</div>
				<div class="card" style="Width:500px; height:600px; float:left; width:33.3%; ">
					<div class="card-image" style="width:365px;">
						<img src="./resources/images/bayern.jpg"/>
						<span class="card-title">FC Bayern München</span>
					</div>
					<div class="card-content">
						<p>which team beat bayern munich??</p>
					</div>
					<div class="card-action">
						<a href="./league/bundesliga">BundesLiga</a>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>

<%@include file="include/footer.jsp" %>