function check(){
	if(document.f.resist_month.value.length == 0){
		alert("수강월이 입력되지 않았습니다!");
		f.resist_month.focus();
		return false;
	}else if(f.c_name.value == 0){
		alert("회원명이 선택되지 않았습니다!");
		f.c_name.focus();
		return false;
	}else if(f.class_area[0].checked == false &&
			 f.class_area[1].checked == false &&
			 f.class_area[2].checked == false &&
			 f.class_area[3].checked == false &&
			 f.class_area[4].checked == false){
		  alert("강의 장소가 선택되지 않았습니다.");
		  f.class_area.focus();
		  return false;	 
	}else if(f.class_name.value == 0){
		alert("강의명이 선택되지 않았습니다.");
		f.class_name.focus();
		return false;
	}else{
		alert("수강신청이 완료되었습니다!");
		document.f.submit();
	}
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.f.reset();
}

function getValue(c_no){
	document.getElementById('c_no').value = c_no;
}