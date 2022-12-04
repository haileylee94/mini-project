function check(){
	if(document.f.sid.value.length == 0){
		alert("학번이 입력되지 않았습니다!");
		f.sid.focus();
		return false;
	}else if(f.midscore.value.length == 0){
		alert("중간고사는 숫자가 아니거나 입력하지 않았습니다!");
		f.midscore.focus();
		return false;
	}else if(f.finalscore.value.length == 0){
		alert("기말고사는 숫자가 아니거나 입력하지 않았습니다!");
		f.finalscore.focus();
		return false;
	}else if(f.attend.value.length == 0){
		alert("출석은 숫자가 아니거나 입력하지 않았습니다!");
		f.attend.focus();
		return false;
	}else if(f.report.value.length == 0){
		alert("레포트는 숫자가 아니거나 입력하지 않았습니다!");
		f.report.focus();
		return false;
	}else if(f.etc.value.length == 0){
		alert("기타는 숫자가 아니거나 입력하지 않았습니다!");
		f.etc.focus();
		return false;
	}else{
		alert("성적이 입력되었습니다!");
	}
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
}