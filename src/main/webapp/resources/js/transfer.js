$(function (){
	
	var eplPrice=0, laligaPrice=0, bundesligaPrice=0, serieaPrice=0;
	
	$.getJSON('/kickoff/league/data/transfer.json',function(data){
		
		_.each(data.transListAll,function(el){
			
			if(el.league==1){
				if(el.price!=null)
					eplPrice += parseFloat(el.price);
			}
			else if(el.league==2){
				if(el.price!=null)
					laligaPrice += parseFloat(el.price);
			}
			else if(el.league==3){
				if(el.price!=null)
					bundesligaPrice += parseFloat(el.price);
			}
			else if(el.league==4){
				if(el.price!=null)
					serieaPrice += parseFloat(el.price);
			}
		});
		
		$('#expensePercentage').highcharts({
			
			chart:{
				plotBackgroundColor:null,
				plotBorderWidth:null,
				plotShadow:true
			},
			title:{
				text:'17-18 Transfer market expense percentage'
			},
			tooltip:{
				pointFormat:'{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions:{
				pie:{
					allowPointSelect:true,
					cursor:'pointer',
					dataLabels:{
						enabled:false
					},
					showInLegend:true
				}
			},
			series:[{
				type:'pie',
				name:'Transfer Expense',
				data:[
					{
						name:'EPL',
						y:eplPrice,
						sliced:true,
						selected:true
					},
					['LaLiga', laligaPrice],
					['BundesLiga',bundesligaPrice],
					['SerieA',serieaPrice]
				]
			}]	
		});
	});
});

$(function (){
	$.getJSON('/kickoff/league/data/transfer.json',function(data){
		$('#expenseTop').highcharts({
			
			chart:{
				type:'column'
			},
			title:{
				text:'world\'s Top10 Excepensive Player'
			},
			subtitle:{
				text:'17-18 Transfer Market'
			},
			xAxis:{
				title:{
					text:'Name'
				},
				type:'category',
				labels:{
					rotation:-45,
					align:'right',
					style:{
						fontSize:'13px',
						fontFamily:'Verdana,sans-serif'
					}
				}
			},
			yAxis:{
				title:{text:'Pounds(M)'},
				max:200,
				min:0,
			},
			legend:{
				enabled:false
			},
			series:[{
				name:'Expense',
				color:'#32f385',
				data:[
					[data.transListTop10[0].name,data.transListTop10[0].price],
					[data.transListTop10[1].name,data.transListTop10[1].price],
					[data.transListTop10[2].name,data.transListTop10[2].price],
					[data.transListTop10[3].name,data.transListTop10[3].price],
					[data.transListTop10[4].name,data.transListTop10[4].price],
					[data.transListTop10[5].name,data.transListTop10[5].price],
					[data.transListTop10[6].name,data.transListTop10[6].price],
					[data.transListTop10[7].name,data.transListTop10[7].price],
					[data.transListTop10[8].name,data.transListTop10[8].price],
					[data.transListTop10[9].name,data.transListTop10[9].price],	
				],
				dataLabels:{
					enabled:true,
					color:'#000000',
					align:'right',
					x:4,
					y:10,
					style:{
						fontSize:'13px',
						fontFamily:'Verdana,sans-serif'
					}
				},
			}],
			tooltip:{
				valuePrefix:'£',
				valueSuffix:'M'
			}			
		});
	});
});

$(function (){
	$.getJSON('/kickoff/league/data/transfer.json',function(data){
		
		var eplEpd=0, laligaEpd=0, bundesligaEpd=0, serieaEpd=0;
		var eplInc=0, laligaInc=0, bundesligaInc=0, serieaInc=0;
		var eplSum=0, laligaSum=0, bundesligaSum=0, serieaSum=0;
		
		_.each(data.transListAll,function(el){
			
			if(el.league==1){
				if(el.price!=null)
					eplEpd +=el.price;
			}
			else if(el.league==2){
				if(el.price!=null)
					laligaEpd +=el.price;
			}
			else if(el.league==3){
				if(el.price!=null)
					bundesligaEpd +=el.price;
			}
			else if(el.league==4){
				if(el.price!=null)
					serieaEpd +=el.price;
			}
		});
		
		_.each(data.transListAll,function(el){
			
			if(el.preLeague==1){
				if(el.price!=null)
					eplInc += el.price;
			}
			else if(el.preLeague==2){
				if(el.price!=null)
					laligaInc +=el.price;
			}
			else if(el.preLeague==3){
				if(el.price!=null)
					bundesligaInc +=el.price;
			}
			else if(el.preLeague==4){
				if(el.price!=null)
					serieaInc +=el.price;
			}
		});

		eplSum = eplInc - eplEpd;
		laligaSum = laligaInc - laligaEpd;
		bundesligaSum = bundesligaInc - bundesligaEpd;
		serieaSum = serieaInc - serieaEpd;
		
		$('#expenseSum').highcharts({
			chart:{
				type:'column'
			},
			title:{
				text:'Each League Transfer Market Sum'
			},
			xAxis:{
				categories:['EPL','LaLiga','BundesLiga','Serie A'],
			},
			credits:{
				enabled:false
			},
			tooltip: {
				  pointFormat: '{series.name} : <b>{point.y:,.1f}</b><br/>',
				  style: {fontSize: '9pt'}
			},
			series:[{
				name:'Income',
				data:[eplInc,laligaInc,bundesligaInc,serieaInc],
				 style: {fontSize: '15pt'}
			},{
				name:'Expenditure',
				data:[eplEpd,laligaEpd,bundesligaEpd,serieaEpd]
			},{
				name:'Sum',
				data:[eplSum,laligaSum,bundesligaSum,serieaSum]
			}]
		});
	});
});
