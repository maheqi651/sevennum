function isEmpty(str) {
	str = trim(str);
	if(str==null || str.length == 0) {
		return true;
	} else {
		return false;
	}
}

function isLetter(ch) {
	return ch>='A'&&ch<='Z' || ch>='a'&&ch<='z';
}

function isNumber(ch) {
	return ch>='0'&&ch<='9';
}

//判断是否是字母或者数字的组合
function isLetterOrNumber(str) {
	for(var i=0; i<str.length; i++) {
		if(!(isLetter(str.charAt(i))||isNumber(str.charAt(i)))) {
			return false;
		}
	}
	return true;
}

//判断是否是字母或者数字的组合
function isNumberStr(str) {
	var flag = true;
	if(str.length == 0) {
		flag = false;
	}
	for(var i=0; i<str.length; i++) {
		if(!isNumber(str.charAt(i))) {
			flag = false;
		}
	}
	return flag;
}


//删除字符串左边的空格
function ltrim(str) { 
	if(str.length==0)
		return(str);
	else {
		var idx=0;
		while(str.charAt(idx).search(/\s/)==0)
			idx++;
		return(str.substr(idx));
	}
}

//删除字符串右边的空格
function rtrim(str) { 
	if(str.length==0)
		return(str);
	else {
		var idx=str.length-1;
		while(str.charAt(idx).search(/\s/)==0)
			idx--;
		return(str.substring(0,idx+1));
	}
}

//删除字符串左右两边的空格
function trim(str) { 
	return(rtrim(ltrim(str)));
}

//验证密码 
//1:密码长度小于6
//2:密码不是字母和数字的组合
function validatePassword(pwd) {
	if(isEmpty(pwd) || pwd.length<6) {
		return 1;
	}
	if(!isLetterOrNumber(pwd)) {
		return 2;
	}
	return 0;
}