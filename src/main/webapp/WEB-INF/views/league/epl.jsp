<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>EPL</title>
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
<script>
	$(document).ready(function (){
		mergeCell("fixture");
	});
	
	function mergeCell(tableId){
		
		var first = true;
		var prevRowSpan = 1;
		var prevCell = null;
		var rows = $("#"+ tableId +" > tbody ").children();
		
		for(var i =0; i < rows.length ; i++){
			
			if(first){
				prevRow = rows[i];
				prevCell = $(prevRow).find("td").eq(0);
				first = false;
				continue;
			}
			
			var row = rows[i];
			
			var tdList = $(row).find("td");
			var firstCell = $(tdList).eq(0);
			var firstCellText = $(firstCell).text();
			
			if(prevCell.text() == firstCellText){
				prevRowSpan++;
				$(prevCell).attr("rowspan",prevRowSpan);
				$(firstCell).remove();
			}else{
				prevRowSpan = 1;
				prevCell = firstCell;
			}
		}
	}
</script>
</head>
<body>
<main>
	<div class="parallax-container" style="margin-left-1px;">
		<div class="parallax"><img src="../resources/images/epl.jpg"/></div>
	</div>
	<div class="section white">
		<h2 class="header" style="text-align:center; margin-left:-75px">EPL</h2>
		<p class="grey-text text-darken-3 lighten-3" style="text-align:center; margin-left:-75px">English Premier League. The most interesting league</p>
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
							<td><a href="/kickoff/league/eplClub?club=${ClubVO.club }">${ClubVO.club }</a></td>
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
					<p> 1~4 : Champions League &nbsp;&nbsp;&nbsp; 5 : Europa League &nbsp;&nbsp;&nbsp; 18~20 : Champion Ship</p>
				</div>
				<div id="fixtures" class="col s12">
					<div class="row">
						<div class="col s12">
							<ul class="tabs tabs-fixed-width">
								<li class="tab col s3"><a href="#Aug" class="active">Aug</a></li>
								<li class="tab col s3"><a href="#Sep">Sep</a></li>
								<li class="tab col s3"><a href="#Oct">Oct</a></li>
								<li class="tab col s3"><a href="#Nov">Nov</a></li>
								<li class="tab col s3"><a href="#Dec">Dec</a></li>
								<li class="tab col s3"><a href="#Jan">Jan</a></li>
								<li class="tab col s3"><a href="#Feb">Feb</a></li>
								<li class="tab col s3"><a href="#Mar">Mar</a></li>
								<li class="tab col s3"><a href="#Apr">Apr</a></li>
								<li class="tab col s3"><a href="#May">May</a></li>
							</ul>
						</div>
						<div id="Aug" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<tr>
									<th>Date</th>
									<th>Time</th>
									<th>Home</th>
									<th>Score</th>
									<th>Away</th>
									<th>Stadium</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${augFixture }" var="FixtureVO">
								<tr>
									<td>${FixtureVO.date }</td>
									<td>${FixtureVO.time }</td>
									<td>${FixtureVO.home }</td>	
									<c:if test="${FixtureVO.score != NULL }">
										<td><a href="eplRound?home=${FixtureVO.home }&away=${FixtureVO.away }&round=${FixtureVO.round }">${FixtureVO.score}</a></td>
									</c:if>
									<c:if test="${FixtureVO.score == NULL }">
										<td>vs</td>
									</c:if>	
									<td>${FixtureVO.away }</td>	
									<td>${FixtureVO.stadium }</td>		
								</tr>						
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Sep" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${sepFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Oct" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${octFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Nov" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${novFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Dec" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${decFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Jan" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${janFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Feb" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${febFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Mar" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${marFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="Apr" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${aprFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="May" class="col s12">
							<table class="striped centered bordered" id="fixture">
							<thead>
								<%@ include file="../include/fixtureTHead.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${mayFixture }" var="FixtureVO">
									<%@ include file="../include/fixtureTBodyEpl.jsp" %>				
								</c:forEach>
							</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="records" class="col s12">
					<table class="striped centered">
						<tr>
							<th>Rank</th>
							<th>name</th>
							<th>Goal(pen)</th>
							<th>Assist</th>
							<th>YellowCard</th>
							<th>RedCard</th>
							<th>offSide</th>
							<th>Shoot</th>
							<th>ShootOnTarget</th>
							<th>Matches</th>
						</tr>
						<c:forEach items="${record }" var="RecordVO" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>${RecordVO.name }</td>
							<c:if test="${RecordVO.penaltyKick == 0 }">
								<td>${RecordVO.goal }</td>
							</c:if>
							<c:if test="${RecordVO.penaltyKick != 0 }">
								<td>${RecordVO.goal }(${RecordVO.penaltyKick })</td>
							</c:if>
							<td>${RecordVO.assist }</td>
							<td>${RecordVO.yellowCard }</td>
							<td>${RecordVO.redCard }</td>
							<td>${RecordVO.offside }</td>
							<td>${RecordVO.shoot }</td>
							<td>${RecordVO.shootOnTarget }</td>
							<td>${RecordVO.matches }</td>
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