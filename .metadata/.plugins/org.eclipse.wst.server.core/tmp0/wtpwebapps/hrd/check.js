function check(){
	if(document.f.custname.value.length == 0){
		alert("회원성명이 입력되지 않았습니다.");
		f.custname.focus();
		return false;
	}
	
	if(document.f.phone.value.length == 0){
		alert("회원 전화번호가 입력되지 않았습니다.");
		f.phone.focus();
		return false;
	}
	
	if(document.f.address.value.length == 0){
		alert("회원 주소가 입력되지 않았습니다.");
		f.address.focus();
		return false;
	}
	
	if(document.f.joindate.value.length == 0){
		alert("가입 날짜가 입력되지 않았습니다.");
		f.joindate.focus();
		return false;
	}
	
	if(document.f.grade.value.length == 0){
		alert("회원 등급이 입력되지 않았습니다.");
		f.grade.focus();
		return false;
	}
	
	if(document.f.city.value.length == 0){
		alert("도시코드가 입력되지 않았습니다.");
		f.city.focus();
		return false;
	}
	
	success();
}

function success(){
	alert("회원 등록이 완료 되었습니다.");
}

function search(){
	window.location='memberList.jsp';
}

function modify(){
	alert("회원 수정이 완료 되었습니다.");
}