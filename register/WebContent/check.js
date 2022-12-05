function check(){
	if(f.subcode.value.length == 0){
		alert("과목코드를 적어주세요!");
		f.subcode.focus();
		return false;
	}else if(f.subname.value.length == 0){
		alert("과목명을 적어주세요!");
		f.subname.focus();
		return false;
	}else if(f.score.value.length == 0){
		alert("학점을 적어주세요!");
		f.score.focus();
		return false;
	}else if(f.teacher.value == 0){
		alert("담당 강사를 선택해주세요!");
		f.teacher.focus();
		return false;
	}else if(f.day[0].checked == false &&
		f.day[1].checked == false &&
		f.day[2].checked == false &&
		f.day[3].checked == false &&
		f.day[4].checked == false){
		alert("요일을 선택해주세요!");
		f.day.focus();
		return false;
	}else if(f.startT.value.length == 0){
		alert("시작 시간을 적어주세요!");
		f.startT.focus();
		return false;
	}else if(f.endT.value.length == 0){
		alert("종료 시간을 적어주세요!");
		f.endT.focus();
		return false;
	}else{
		alert("추가가 성공했습니다!");
	}
}

function edit(){
	alert("수정에 성공했습니다!");
}

function res(){
	alert("수정을 취소합니다!");
}