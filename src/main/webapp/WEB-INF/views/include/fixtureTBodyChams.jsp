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