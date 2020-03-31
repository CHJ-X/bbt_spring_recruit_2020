window.onload = function() {
	setTimeout("pageTurnOut('loading'); document.getElementById('bm1').click();",2000);
	setTimeout("hide(0)",5000);
	fillContent();
	fillOption();
}

function pageTurnOut(id) {
	document.getElementById(id).style.transform='rotate(120deg)';
	//$('#'+id).css('transform','rotate(120deg)');
}

function pageTurnIn(id) {
	$('#'+id).css('transform','none');
}

function bookmarkSelect(num) {
	$('#bm1').css('backgroundImage','url(img/bookmark.png)');
	$('#bm2').css('backgroundImage','url(img/bookmark.png)');
	$('#bm3').css('backgroundImage','url(img/bookmark.png)');
	$('#bm'+num).css('backgroundImage','url(img/bookmark_selected.png)');
}

function next(num) {
	pageTurnOut('in'+num);
	pageTurnIn('in'+(num+1));
}

function prev(num) {
	if(num == 0) {
		pageTurnIn('main');
	}
	else if(num == 11) {
		pageTurnIn('main');
	}
	else {
		pageTurnIn('in'+(num-1));
	}
}

function fillContent() {
	for(i=0; i<=9; i++) {
		document.getElementById('outline').innerHTML +=
		'<div id="in'+i+'" style="z-index: '+(-4-i)+';" class="page intro">'
		+'<div class="halfBorder centerDiv"><img class="banner" src="img/text/dep_'+i+'.png"/><br/><img src="img/carrot.png" style="position: relative; top: -108px; left:240px;"></div>'
		+'<div class="content">'+depInt[i]["description"]+'</div>'
		+'<table class="btnLine" align="center"><tr>'
		+'<td><div class="prev" onclick="prev('+i+')"></div></td>'
		+'<td><div class="btn" onclick="pageTurnIn('+"'reg'"+'); selDep('+i+');">进入报名</div></td>'
		+'<td><div class="next" onclick="next('+i+')"></div></td>'
		+'</tr></table></div>';
	}
}

function hide(mode) {
	if(mode==0) {
		$('#hideBtn').css('transform','scale(0.6,0.6) rotateY(180deg)');
		$('#hideArea').css('right','-160px');
		$('#hideBtn').attr('onclick','hide(1)');
	}
	else if (mode==1) {
		$('#hideBtn').css('transform','scale(0.6,0.6) rotateY(0deg)');
		$('#hideArea').css('right','0');
		$('#hideBtn').attr('onclick','hide(0)');
		setTimeout("hide(0)",3000)
	}
}

function fillOption() {
	for(i=0; i<=from.length-1; i++) {
		document.getElementById('from').options.add(new Option(from[i][2],from[i][0]));
	}
	for(i=0; i<=dep.length-1; i++) {
		document.getElementById('First_choice').options.add(new Option(dep[i][1]+dep[i][2],dep[i][1]+dep[i][2]));
		document.getElementById('Second_choice').options.add(new Option(dep[i][1]+dep[i][2],dep[i][1]+dep[i][2]));
	}
}