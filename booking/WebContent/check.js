function check(){
	if(document.f.revno.value.length == 0){
		alert("예약번호를 적어주세요!");
		f.revno.focus();
		return false;
	}else if(document.f.empno.value.length == 0){
		alert("사원번호를 적어주세요!");
		f.empno.focus();
		return false;
	}else if(f.resvdate.value.length == 0){
		alert("근무일자를 적어주세요!");
		f.resvdate.focus();
		return false;
	}else if(f.seatno.value.length == 0){
		alert("좌석번호를 정해주세요!");
		f.seatno.focus();
		return false;
	}else{
		alert("좌석선택이 성공했습니다!");
		document.f.submit();
	}
}

function search(){
	if(fl.empno.value.length == 0){
		alert("사원번호가 입력되지 않았습니다");
		fl.empno.focus();
		return false;
	}else{
		document.fl.submit();
		return true;
	}
}

function home(){
	window.location='index.jsp';
}