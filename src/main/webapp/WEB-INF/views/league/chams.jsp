<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>Champions League</title>
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
		width:340px;
		height:576px;
		background-color:#59b1f6;  
	}
	.d2{
		float:left;
		margin-left:7px;
		background-color:#ffb5b4;
		color:white;
		height:576px;
	}
	.d3{
		float:left;
		overflow:hidden;
		background-color:#c0ffb4;
		color:#5e8818;
		width:340px;
		height:576px;
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
		<div class="parallax"><img src="../resources/images/chams.jpg"/></div>
	</div>
	<div class="section white">
		<h2 class="header" style="text-align:center; margin-left:-75px">Champions League</h2>
		<p class="grey-text text-darken-3 lighten-3" style="text-align:center; margin-left:-75px">Star Wars. The most honorable league</p>
		<div class="row container">
			<div class="row">
				<div class="col s11">
					<ul class="tabs tabs-fixed-width">
						<li class="tab col s3"><a class="active" href="#round"><i class="fa fa-trophy">&nbsp;</i>Round</a></li>
						<li class="tab col s3"><a href="#fixtures"><i class="fa fa-calendar">&nbsp;</i>Fixtures</a></li>
						<li class="tab col s3"><a href="#records"><i class="fa fa-bar-chart-o">&nbsp;</i>Records</a></li>
						<li class="tab col s3"><a href="#history"><i class="fa fa-book">&nbsp;</i>History</a></li>
					</ul>
				</div>
				<div class="row">
					<div id="round" class="col s12">
						<div class="col s12">
							<ul class="tabs tabs-fixed-width">
								<li class="tab col s3"><a href="#groupStage">Group Stage</a></li>
								<li class="tab col s3"><a href="#round16">Round of 16</a></li>
								<li class="tab col s3"><a href="#QF">Quater Finals</a></li>
								<li class="tab col s3"><a href="#SF">Semi Finals</a></li>
								<li class="tab col s3"><a href="#Fi">Final</a></li>
							</ul>
						</div>
						<div id="groupStage">
							<div class="row">
								<div class="col s12">
									<ul class="tabs tabs-fixed-width">
										<li class="tab col s3"><a href="#A">A</a></li>
										<li class="tab col s3"><a href="#B">B</a></li>
										<li class="tab col s3"><a href="#C">C</a></li>
										<li class="tab col s3"><a href="#D">D</a></li>
										<li class="tab col s3"><a href="#E">E</a></li>
										<li class="tab col s3"><a href="#F">F</a></li>
										<li class="tab col s3"><a href="#G">G</a></li>
										<li class="tab col s3"><a href="#H">H</a></li>
									</ul>
								</div>
								<div id="A" class="col s12">
									<table class="striped centered">
										<tr>
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
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'A' }">
										<tr>
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
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="B" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'B' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="C" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'C' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="D" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'D' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
											</c:forEach>
									</table>
								</div>
								<div id="E" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'E' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="F" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'F' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="G" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'G' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
								<div id="H" class="col s12">
									<table class="striped centered">
										<%@ include file="../include/chamsTHead.jsp" %>
										<c:forEach items="${chamsGroup }" var="ClubVO" varStatus="status">
										<c:if test="${ClubVO.groupf == 'H' }">
										<%@ include file="../include/chamsTBody.jsp" %>
										</c:if>			
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div id="round16" class="col s12">
							<div class="row">
								<table class="striped centered">
									<c:forEach items="${chamsFixture16 }" var="FixtureVO" varStatus="status">
										<c:if test="${status.count < 9 }">
											<tr>
												<td>${FixtureVO.home }</td>
												<td>vs</td>
												<td>${FixtureVO.away }</td>
											</tr>
										</c:if>			
									</c:forEach>
								</table>
							</div>
						</div>
						<div id="QF" class="col s12">
							<div class="row">
								<table class="striped centered">
									<c:forEach items="${chamsFixture8 }" var="FixtureVO" varStatus="status">
										<c:if test="${status.count < 5 }">
											<tr>
												<td>${FixtureVO.home }</td>
												<td>vs</td>
												<td>${FixtureVO.away }</td>
											</tr>
										</c:if>			
									</c:forEach>
								</table>
							</div>
						</div>
						<div id="SF" class="col s12">
							<div class="row">
								<table class="striped centered">
									<c:forEach items="${chamsFixture4 }" var="FixtureVO" varStatus="status">
										<c:if test="${status.count < 3 }">
											<tr>
												<td>${FixtureVO.home }</td>
												<td>vs</td>
												<td>${FixtureVO.away }</td>
											</tr>
										</c:if>			
									</c:forEach>
								</table>
							</div>
						</div>
						<div id="Fi" class="col s12">
							<div class="row">
								<table class="striped centered">
									<c:forEach items="${chamsFixtureF }" var="FixtureVO" varStatus="status">
										<c:if test="${status.count < 9 }">
											<tr>
												<td>${FixtureVO.home }</td>
												<td>vs</td>
												<td>${FixtureVO.away }</td>
											</tr>
										</c:if>			
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
					<div id="fixtures" class="col s12">
						<div class="col s12">
							<ul class="tabs tabs-fixed-width">
								<li class="tab col s3"><a href="#GS">Group Stage</a></li>
								<li class="tab col s3"><a href="#16">Round of 16</a></li>
								<li class="tab col s3"><a href="#8">Quater Finals</a></li>
								<li class="tab col s3"><a href="#4">Semi Finals</a></li>
								<li class="tab col s3"><a href="#2">Final</a></li>
							</ul>
						</div>
						<div id="GS" class="col s12">
							<table class="striped centered bordered" id= "fixture">
							<thead>
								<tr>
									<th>Date</th>
									<th>Time</th>
									<th>Home</th>
									<th>Score</th>
									<th>Away</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${chamsFixtureGS }" var="FixtureVO">
								<tr>
									<td>${FixtureVO.date }</td>
									<td>${FixtureVO.time }</td>	
									<td>${FixtureVO.home }</td>	
									<c:if test="${FixtureVO.score != NULL }">
										<td>${FixtureVO.score }</td>
									</c:if>
									<c:if test="${FixtureVO.score == NULL }">
										<td>vs</td>
									</c:if>
									<td>${FixtureVO.away }</td>			
								</tr>				
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="16" class="col s12">
							<table class="striped centered bordered" id= "fixture">
							<thead>
								<%@ include file="../include/fixtureTHeadChams.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${chamsFixture16 }" var="FixtureVO">
								<%@ include file="../include/fixtureTBodyChams.jsp" %>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="8" class="col s12">
							<table class="striped centered bordered" id= "fixture">
							<thead>
								<%@ include file="../include/fixtureTHeadChams.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${chamsFixture8 }" var="FixtureVO">
								<%@ include file="../include/fixtureTBodyChams.jsp" %>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="4" class="col s12">
							<table class="striped centered bordered" id= "fixture">
							<thead>
								<%@ include file="../include/fixtureTHeadChams.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${chamsFixture4 }" var="FixtureVO">
								<%@ include file="../include/fixtureTBodyChams.jsp" %>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="2" class="col s12">
							<table class="striped centered bordered" id= "fixture">
							<thead>
								<%@ include file="../include/fixtureTHeadChams.jsp" %>
							</thead>
							<tbody>
								<c:forEach items="${chamsFixture16 }" var="FixtureVO">
								<%@ include file="../include/fixtureTBodyChams.jsp" %>
								</c:forEach>
							</tbody>
							</table>
						</div>
					</div>
					<div id="records" class="col ss1" style="margin-top:20px;">
						<div class="d1">
							<table class="striped centered" id= "fixture">
							<caption style="font-size:30px;"><i class="fa fa-soccer-ball-o">&nbsp;</i>Goal Rank</caption>
								<tr>
									<th>Rank</th>
									<th>Name</th>
									<th>Goal</th>
									<th>matches</th>
								</tr>
							<tbody>
								<c:forEach items="${chamsGoal }" var="RecordVO" varStatus="status">
								<tr>
									<td>${status.count }</td>
									<td>${RecordVO.name }</td>
									<c:if test="${RecordVO.penaltyKick == NULL }">
										<td>${RecordVO.goal }</td>	
									</c:if>
									<c:if test="${RecordVO.penaltyKick != NULL }">
										<td>${RecordVO.goal }(${RecordVO.penaltyKick })</td>	
									</c:if>
									<td>${RecordVO.matches }</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div class="d3">
							<table class="striped centered" id= "fixture">
							<caption style="font-size:30px;"><i class="fa fa-gift">&nbsp;</i>Assist Rank</caption>
								<tr>
									<th>Rank</th>
									<th>Name</th>
									<th>Assist</th>
									<th>matches</th>
								</tr>
							<tbody>
								<c:forEach items="${chamsAssist }" var="RecordVO" varStatus="status">
								<tr>
									<td>${status.count }</td>
									<td>${RecordVO.name }</td>
									<td>${RecordVO.assist }</td>
									<td>${RecordVO.matches }</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div class="d2">
							<table class="striped centered" id= "fixture">
							<caption style="font-size:30px;"><i class="fa fa-arrows-alt">&nbsp;</i>Pass Rank</caption>
								<tr>
									<th>Rank</th>
									<th>Name</th>
									<th>PassA</th>
									<th>PassS</th>
									<th>Pass%</th>
								</tr>
							<tbody>
								<c:forEach items="${chamsPass }" var="RecordVO" varStatus="status">
								<tr>
									<td>${status.count }</td>
									<td>${RecordVO.name }</td>
									<td>${RecordVO.passAttempt }</td>
									<td>${RecordVO.passSuccess }</td>
									<fmt:parseNumber var="passSuccessRate" integerOnly="true" value="${(RecordVO.passSuccess/RecordVO.passAttempt)*100 }"/>
									<td>${passSuccessRate }%</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
					</div>
					<div id="history" class="Col s12">
						<div class="col s12">
							<ul class="tabs tabs-fixed-width">
								<li class="tab col s3"><a href="#winners">Winners</a></li>
								<li class="tab col s3"><a href="#topScorer">Top Scorer</a></li>
							</ul>
						</div>
						<div id="winners" class="col s12">
							<table class="striped centered">
								<tr>
									<th>Season</th>
									<th>Winner</th>
									<th> </th>
									<th>Runner-Up</th>
									<th>Score</th>
									<th>Stadium</th>
								</tr>
							<tbody>
								<c:forEach items="${chamsWinner }" var="WinnerVO">
								<tr>
									<td>${WinnerVO.season }</td>
									<td>${WinnerVO.winner }</td>
									<td>vs</td>
									<td>${WinnerVO.loser }</td>
									<td>${WinnerVO.score }</td>
									<td>${WinnerVO.stadium }</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
						<div id="topScorer" class="col s12">
							<table class="striped centered" id= "fixture">
								<tr>
									<th>Rank</th>
									<th>name</th>
									<th>Goal</th>
									<th>Matches</th>
									<th>Year</th>
									<th>club</th>
									<th>Country</th>
								</tr>
							<tbody>
								<c:forEach items="${chamsScorer }" var="ScorerVO"  varStatus="status">
								<tr>
									<td>${status.count }</td>
									<td>${ScorerVO.name }</td>
									<td>${ScorerVO.goal }</td>
									<td>${ScorerVO.matches }</td>
									<td>${ScorerVO.year }</td>
									<td>${ScorerVO.club }</td>
									<td>${ScorerVO.country }</td>
								</tr>
								</c:forEach>
							</tbody>
							</table>
						</div>
					</div>
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