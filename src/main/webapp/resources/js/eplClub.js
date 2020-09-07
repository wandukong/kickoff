$(function (){
	
	function getQueryParam(param){
		
		var result = window.location.search.match(
				new RegExp("(\\?|&)"+param+"(\\[\\])?=([^&]*)")
		);
		
		return result ? result[3] : false ;
	}
	
	var country ={
			"Argentina":"ar",  //South-America
			"Brazil":"br",
			"Colombia":"co","Costa Rica":"cr",
			"Ecuador":"ec",
			
			"Armenia":"am",  //Europe
			"Belgium":"be",
			"Croatia":"hr",
			"France":"fr",
			"Germany":"de",
			"Italy":"it",
			"Netherlands":"nl",
			"Portugal":"pt",
			"Spain":"es","Sweden":"se","Serbia":"rs",
			"England":"gb-eng","Wales":"gb-wls",
			
			"Coted'Ivoire":"ci"   //Africa

	};
	
	var clubParam = decodeURIComponent(getQueryParam("club"));
	
	var params={club:clubParam};
	
	var th1 = true, th2 = true, th3 = true, th4 = true,
		html1 = '', html2 = '', html3 = '', html4 = '';
	
	$.ajax({
		cache : false,
		type : 'GET',
		url : '/kickoff/league/data/eplPlayer.json',
		data : params,
		dataType : 'json',
		success : function(data){
			_.each(data.eplPlayer,function(el){
				
				if(el.position == 'FW'){
					if(th1){
						html1 += '<tr style="text-align:center;">';
						html1 += '<th>backNum</th>';
						html1 += '<th>name</th>';
						html1 += '<th>birth</th>';
						html1 += '<th>country</th>';
						html1 += '<th>height</th>';
						html1 += '<th>weight</th>';
						html1 += '</tr>';
						th1 = false;
					}
					
					html1 += '<tr>';
					html1 += '<td>'+el.backNum+'</td>';
					html1 += '<td>'+el.name+'</td>';
					html1 += '<td>'+el.birth+'</td>';
					html1 += '<td><span class="flag-icon flag-icon-'+country[el.country]+'"/>'+el.country+'</td>';
					html1 += '<td>'+el.height+'</td>';
					html1 += '<td>'+el.weight+'</td>';
					html1 += '</tr>';
					
					$('#fwPlayer').html(html1);
				}
				else if(el.position == 'MF'){
					if(th2){
						html2 += '<tr>';
						html2 += '<th>backNum</th>';
						html2 += '<th>name</th>';
						html2 += '<th>birth</th>';
						html2 += '<th>country</th>';
						html2 += '<th>height</th>';
						html2 += '<th>weight</th>';
						html2 += '</tr>';
						th2 = false;
					}
					
					html2 += '<tr>';
					html2 += '<td>'+el.backNum+'</td>';
					html2 += '<td>'+el.name+'</td>';
					html2 += '<td>'+el.birth+'</td>';
					html2 += '<td><span class="flag-icon flag-icon-'+country[el.country]+'"/>'+el.country+'</td>';
					html2 += '<td>'+el.height+'</td>';
					html2 += '<td>'+el.weight+'</td>';
					html2 += '</tr>';
					
					$('#mfPlayer').html(html2);
				}
				else if(el.position == 'DF'){
					if(th3){
						html3 += '<tr>';
						html3 += '<th>backNum</th>';
						html3 += '<th>name</th>';
						html3 += '<th>birth</th>';
						html3 += '<th>country</th>';
						html3 += '<th>height</th>';
						html3 += '<th>weight</th>';
						html3 += '</tr>';
						th3 = false;
					}
					
					html3 += '<tr>';
					html3 += '<td>'+el.backNum+'</td>';
					html3 += '<td>'+el.name+'</td>';
					html3 += '<td>'+el.birth+'</td>';
					html3 += '<td><span class="flag-icon flag-icon-'+country[el.country]+'"/>'+el.country+'</td>';
					html3 += '<td>'+el.height+'</td>';
					html3 += '<td>'+el.weight+'</td>';
					html3 += '</tr>';
					
					$('#dfPlayer').html(html3);
				}
				else if(el.position == 'GK'){
					if(th4){
						html4 += '<tr>';
						html4 += '<th>backNum</th>';
						html4 += '<th>name</th>';
						html4 += '<th>birth</th>';
						html4 += '<th>country</th>';
						html4 += '<th>height</th>';
						html4 += '<th>weight</th>';
						html4 += '</tr>';
						th4 = false;
					}
					
					html4 += '<tr>';
					html4 += '<td>'+el.backNum+'</td>';
					html4 += '<td>'+el.name+'</td>';
					html4 += '<td>'+el.birth+'</td>';
					html4 += '<td><span class="flag-icon flag-icon-'+country[el.country]+'"/>'+el.country+'</td>';
					html4 += '<td>'+el.height+'</td>';
					html4 += '<td>'+el.weight+'</td>';
					html4 += '</tr>';
					
					$('#gkPlayer').html(html4);
				}
			})
		}
	})
});