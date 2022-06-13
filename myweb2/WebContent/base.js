	var today = new Date();
	todayYear = today.getFullYear();
	todayMonth = null;
	for(i=0;i<12;i++){
		switch(today.getMonth()){
		case i :
			todayMonth = eval(i+1);
			break;
		}
	}
	
	todayDate = today.getDate();
	
	function bookingCheck(){
		window.open('Login.html','Login','width=420px height=300px left=200px top=200px scrollbars=no resizable=no toolbars=no menubar=no _blank');
	}
	
	function copyright(){
		window.open('copyright.html','Copyright','width=500px height=600px left=100px top=100px resizable=no toolbars=no menubar=no _blank');
	}
	function bookingPage(e){
		window.open('bookinginfo_bookingPage.html','booking','width=750px height=500px left=200px top=200px scrollbars=no resizable=no toolbars=no menubar=no _blank');
	}
	
	function serchBtnClick(){
		var roomList = document.getElementById('roomList');
		var child = document.getElementsByClassName('room');
		var adultBox = document.getElementById('adultBox');
		var kidBox = document.getElementById('kidBox');
		
		remove();
		
		if(child.length == 0){
			if((eval(adultBox.value+"+"+kidBox.value)) >= 6){
			blue1();
			}else if((eval(adultBox.value+"+"+kidBox.value)) <= 2){
			ocean1();
			ocean2();
			}else if((eval(adultBox.value+"+"+kidBox.value)) >= 3){
			ocean2();
			blue1();
			}
		}
	}
	function remove(){
		var roomList = document.getElementById('roomList');
		var child = document.getElementsByClassName('room');
		while(child.length != 0){
				roomList.removeChild(child[0]);
		}
	}
	
	
	function blue1(){
		var div1 = document.createElement('div');
		var div2 = document.createElement('div');
		var div3 = document.createElement('div');
		var div4 = document.createElement('div');
		var div5 = document.createElement('div');
		var div6 = document.createElement('div');
		var div7 = document.createElement('div');
		var div8 = document.createElement('div');
		var img = document.createElement('img');
		var h3 = document.createElement('h3');
		var p1 = document.createElement('p');
		var p2 = document.createElement('p');
		var p3 = document.createElement('p');
		var br1 = document.createElement('br');
		var br2 = document.createElement('br');
		var br3 = document.createElement('br');
		var br4 = document.createElement('br');
		var br5 = document.createElement('br');
		var br6 = document.createElement('br');
		var br7 = document.createElement('br');
		var span1 = document.createElement('span');
		var span2 = document.createElement('span');
		var btn = document.createElement('button');
		
		div1.setAttribute('class','room');
			img.setAttribute('class','roomImg');
			img.setAttribute('src','images/객실내부31.jpg');
			img.setAttribute('width','200px');
			img.setAttribute('height','200px');
			img.setAttribute('alt','블루 1호실');
		div1.appendChild(img);
			div2.setAttribute('class','exp1');
				h3.setAttribute('class','roomName');
				h3.innerText='블루 1호실';
				div2.appendChild(h3);
				div2.appendChild(br1);
				div2.appendChild(br2);
				p1.innerText='아이들도 편히 놀 수 있는 공간이 있는 블루 1호실';
				div2.appendChild(p1);
				div2.appendChild(br3);
				p2.innerText='큰 공간이 필요할 때 적합합니다.';
				div2.appendChild(p2);
				div2.appendChild(br4);
				div2.appendChild(br5);
				p3.innerText='기준 4인~최대 6인 / 2명 초과시 추가요금 발생';
				div2.appendChild(p3);
				div2.appendChild(br6);
				div3.setAttribute('class','mark');
				div3.innerText='※사용 가능 시설 안내※';
				div2.appendChild(div3);
				div4.setAttribute('class','mark1');
				div4.innerText='실내수영장';
				div2.appendChild(div4);
				div5.setAttribute('class','mark2');
				div5.innerText='바베큐장';
				div2.appendChild(div5);
				div6.setAttribute('class','mark3');
				div6.innerText='넷플릭스/TV';
				div2.appendChild(div6);
				div7.setAttribute('class','mark4');
				div7.innerText='PC/인터넷';
				div2.appendChild(div7);
		div1.appendChild(div2);
			div8.setAttribute('class','exp2');
				span1.setAttribute('class','roomPrice');
				span1.innerText='200,000';
				div8.appendChild(span1);
				span2.innerText='/1박';
				div8.appendChild(span2);
				div8.appendChild(br7);
				btn.setAttribute('class','bookingBtn');
				btn.setAttribute('type','button');
				btn.setAttribute('value','blue1');
				btn.addEventListener('click',bookingPage);
				btn.innerText='예약하기';
				div8.appendChild(btn);
		div1.appendChild(div8);
		roomList.appendChild(div1);
	}

	function ocean1(){
		var div1 = document.createElement('div');
		var div2 = document.createElement('div');
		var div3 = document.createElement('div');
		var div4 = document.createElement('div');
		var div5 = document.createElement('div');
		var div6 = document.createElement('div');
		var div7 = document.createElement('div');
		var div8 = document.createElement('div');
		var img = document.createElement('img');
		var h3 = document.createElement('h3');
		var p1 = document.createElement('p');
		var p2 = document.createElement('p');
		var p3 = document.createElement('p');
		var br1 = document.createElement('br');
		var br2 = document.createElement('br');
		var br3 = document.createElement('br');
		var br4 = document.createElement('br');
		var br5 = document.createElement('br');
		var br6 = document.createElement('br');
		var br7 = document.createElement('br');
		var span1 = document.createElement('span');
		var span2 = document.createElement('span');
		var btn = document.createElement('button');
		
		div1.setAttribute('class','room');
			img.setAttribute('class','roomImg');
			img.setAttribute('src','images/객실내부11.jpg');
			img.setAttribute('width','200px');
			img.setAttribute('height','200px');
			img.setAttribute('alt','오션 1호실');
		div1.appendChild(img);
			div2.setAttribute('class','exp1');
				h3.setAttribute('class','roomName');
				h3.innerText='오션 1호실';
				div2.appendChild(h3);
				div2.appendChild(br1);
				div2.appendChild(br2);
				p1.innerText='연인과 편안한 휴식을 보낼 수 있는 오션 1호실';
				div2.appendChild(p1);
				div2.appendChild(br3);
				p2.innerText='연인 또는 부부끼리 머무르기에 좋습니다.';
				div2.appendChild(p2);
				div2.appendChild(br4);
				div2.appendChild(br5);
				p3.innerText='기준 2인~최대 2인';
				div2.appendChild(p3);
				div2.appendChild(br6);
				div3.setAttribute('class','mark');
				div3.innerText='※사용 가능 시설 안내※';
				div2.appendChild(div3);
				div4.setAttribute('class','mark1');
				div4.innerText='넷플릭스/TV';
				div2.appendChild(div4);
				div5.setAttribute('class','mark2');
				div5.innerText='바베큐장';
				div2.appendChild(div5);
				div6.setAttribute('class','mark3');
				div6.innerText='PC/인터넷';
				div2.appendChild(div6);
		div1.appendChild(div2);
			div8.setAttribute('class','exp2');
				span1.setAttribute('class','roomPrice');
				span1.innerText='150,000';
				div8.appendChild(span1);
				span2.innerText='/1박';
				div8.appendChild(span2);
				div8.appendChild(br7);
				btn.setAttribute('class','bookingBtn');
				btn.setAttribute('type','button');
				btn.setAttribute('value','ocean1');
				btn.addEventListener('click',bookingPage);
				btn.innerText='예약하기';
				div8.appendChild(btn);
		div1.appendChild(div8);
		roomList.appendChild(div1);
	}
	
	function ocean2(){
		var div1 = document.createElement('div');
		var div2 = document.createElement('div');
		var div3 = document.createElement('div');
		var div4 = document.createElement('div');
		var div5 = document.createElement('div');
		var div6 = document.createElement('div');
		var div7 = document.createElement('div');
		var div8 = document.createElement('div');
		var img = document.createElement('img');
		var h3 = document.createElement('h3');
		var p1 = document.createElement('p');
		var p2 = document.createElement('p');
		var p3 = document.createElement('p');
		var br1 = document.createElement('br');
		var br2 = document.createElement('br');
		var br3 = document.createElement('br');
		var br4 = document.createElement('br');
		var br5 = document.createElement('br');
		var br6 = document.createElement('br');
		var br7 = document.createElement('br');
		var span1 = document.createElement('span');
		var span2 = document.createElement('span');
		var btn = document.createElement('button');
		
		div1.setAttribute('class','room');
			img.setAttribute('class','roomImg');
			img.setAttribute('src','images/객실내부21.jpg');
			img.setAttribute('width','200px');
			img.setAttribute('height','200px');
			img.setAttribute('alt','오션 2호실');
		div1.appendChild(img);
			div2.setAttribute('class','exp1');
				h3.setAttribute('class','roomName');
				h3.innerText='오션 2호실';
				div2.appendChild(h3);
				div2.appendChild(br1);
				div2.appendChild(br2);
				p1.innerText='아이들이 있는 가족에게 적합한 오션 2호실';
				div2.appendChild(p1);
				div2.appendChild(br3);
				p2.innerText='내부 수영장이 있어서 아이들이 좋아합니다.';
				div2.appendChild(p2);
				div2.appendChild(br4);
				div2.appendChild(br5);
				p3.innerText='기준 2인~최대 4인 / 2명 초과시 추가요금 발생';
				div2.appendChild(p3);
				div2.appendChild(br6);
				div3.setAttribute('class','mark');
				div3.innerText='※사용 가능 시설 안내※';
				div2.appendChild(div3);
				div4.setAttribute('class','mark1');
				div4.innerText='실내수영장';
				div2.appendChild(div4);
				div5.setAttribute('class','mark2');
				div5.innerText='바베큐장';
				div2.appendChild(div5);
				div6.setAttribute('class','mark3');
				div6.innerText='넷플릭스/TV';
				div2.appendChild(div6);
				div7.setAttribute('class','mark4');
				div7.innerText='PC/인터넷';
				div2.appendChild(div7);
		div1.appendChild(div2);
			div8.setAttribute('class','exp2');
				span1.setAttribute('class','roomPrice');
				span1.innerText='180,000';
				div8.appendChild(span1);
				span2.innerText='/1박';
				div8.appendChild(span2);
				div8.appendChild(br7);
				btn.setAttribute('class','bookingBtn');
				btn.setAttribute('type','button');
				btn.setAttribute('value','blue2');
				btn.addEventListener('click',bookingPage);
				btn.innerText='예약하기';
				div8.appendChild(btn);
		div1.appendChild(div8);
		roomList.appendChild(div1);
	}
