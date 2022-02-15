function loginvalidate(){
	let uname=document.getElementById("unameId").value;
	let pass=document.getElementById("pswId").value;
	if(isBlank(uname)){
		return false
	}
	if(isBlank(pass)){
		return false;
	}
	return true
}
function isBlank(val){
	return(val.trim()=="")?true:false;
}