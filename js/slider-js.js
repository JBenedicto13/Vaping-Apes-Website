
function clear_color() {
	document.getElementById('btnNavsId0').style.backgroundColor = "transparent";
	document.getElementById('btnNavsId1').style.backgroundColor = "transparent";
	document.getElementById('btnNavsId2').style.backgroundColor = "transparent";
	document.getElementById('btnNavsId3').style.backgroundColor = "transparent";
}

var counter = 0;

setInterval(function(){
  
  if (counter == 0) {
  	document.getElementById('btnNavsId0').click();
  	clear_color();
  	document.getElementById('btnNavsId0').style.backgroundColor = "#fff";
  }

  else if (counter == 1) {
  	document.getElementById('btnNavsId1').click();
  	clear_color();
  	document.getElementById('btnNavsId1').style.backgroundColor = "#fff";
  }

  else if (counter == 2) {
  	document.getElementById('btnNavsId2').click();
  	clear_color();
  	document.getElementById('btnNavsId2').style.backgroundColor = "#fff";
  }

  else if (counter == 3) {
  	document.getElementById('btnNavsId3').click();
  	clear_color();
  	document.getElementById('btnNavsId3').style.backgroundColor = "#fff";
  }

  counter++;

  if(counter > 3){
    counter = 0;
  }
}, 3000);

function img_hideAll() {
	document.getElementById('img_0').style.display = "none";
	document.getElementById('img_1').style.display = "none";
	document.getElementById('img_2').style.display = "none";
	document.getElementById('img_3').style.display = "none";
}
function img_index0() {
	document.getElementById('btnNavsId0').style.backgroundColor = "#fff";
	counter = 0;
	img_hideAll();
	document.getElementById('img_0').style.display = "block";
}

function img_index1() {
	document.getElementById('btnNavsId1').style.backgroundColor = "#fff";
	counter = 1;
	img_hideAll();
	document.getElementById('img_1').style.display = "block";
}

function img_index2() {
	document.getElementById('btnNavsId2').style.backgroundColor = "#fff";
	counter = 2;
	img_hideAll();
	document.getElementById('img_2').style.display = "block";
}

function img_index3() {
	document.getElementById('btnNavsId3').style.backgroundColor = "#fff";
	counter = 3;
	img_hideAll();
	document.getElementById('img_3').style.display = "block";
}