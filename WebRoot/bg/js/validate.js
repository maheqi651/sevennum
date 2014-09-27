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

//�ж��Ƿ�����ĸ�������ֵ����
function isLetterOrNumber(str) {
	for(var i=0; i<str.length; i++) {
		if(!(isLetter(str.charAt(i))||isNumber(str.charAt(i)))) {
			return false;
		}
	}
	return true;
}

//�ж��Ƿ�����ĸ�������ֵ����
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


//ɾ���ַ�����ߵĿո�
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

//ɾ���ַ����ұߵĿո�
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

//ɾ���ַ����������ߵĿո�
function trim(str) { 
	return(rtrim(ltrim(str)));
}

//��֤���� 
//1:���볤��С��6
//2:���벻����ĸ�����ֵ����
function validatePassword(pwd) {
	if(isEmpty(pwd) || pwd.length<6) {
		return 1;
	}
	if(!isLetterOrNumber(pwd)) {
		return 2;
	}
	return 0;
}