var join = false;
function searchPost() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullAddr = ''; // 최종 주소 변수
			var extraAddr = ''; // 조합형 주소 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				fullAddr = data.roadAddress;

			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				fullAddr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다.
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('post').value = data.zonecode; // 5자리 새우편번호
																	// 사용
			document.getElementById('address').value = fullAddr;

			// 커서를 상세주소 필드로 이동한다.
			document.getElementById('address2').focus();
		}
	}).open();
}

function check() {

	if (document.addjoin.name.value == "") {
		alert("이름을 입력 하세요");
		return false;
	} else if (document.addjoin.id.value == "") {
		alert("아이디를 입력 하세요");
		return false;
	} else if (document.addjoin.passwd.value == "") {
		alert("비밀번호를 입력 하세요");
		return false;
	} else if (document.addjoin.passwd2.value == "") {
		alert("비밀번호확인을 입력 하세요");
		return false;
	} else if (document.addjoin.email.value == "") {
		alert("이메일을 입력 하세요");
		return false;
	} else if (document.addjoin.phone2.value == "") {
		alert("전화번호 두 번째 칸을 입력 하세요");
		return false;
	} else if (document.addjoin.phone3.value == "") {
		alert("전화번호 세 번째 칸을 입력 하세요");
		return false;
	} else if (document.addjoin.post.value == "") {
		alert("우편번호를 입력 하세요.");
		return false;
	} else if (document.addjoin.address.value == "") {
		alert("주소를 입력 하세요");
		return false;
	} else if (document.addjoin.address2.value == "") {
		alert("상세주소를 입력 하세요");
		return false;
	} else if (document.addjoin.passwd.value != document.addjoin.passwd2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	} else if (document.addjoin.birth.value == "") {
		alert("생년월일을 입력하세요.");
		return false;
	}
}

/* 조현빈 자바스크립트 부분 추가 */
var checked = false;
window.onload = function() {
	// 이벤트소스에 이벤트리스너 등록
	document.addjoin.id.onkeyup = function() {
		var joinId = document.addjoin.id.value;

		if (document.addjoin.id.value.length >= 5
				&& document.addjoin.id.value.length <= 8) {
			// 서버에 아이디 전송
			ajax({
				url : "/user/MemberJoinIdChk.bins",
				data : "joinId=" + joinId,
				callback : function(xhr) {
					// alert(xhr.responseText);
					onMessage(xhr, "id");
				}
			});
			checked = true;
		} else {
			setMessage("아이디는 5~8자 이어야 합니다.");
		}

	}

	document.addjoin.email.onkeyup = function() {
		var joinEmail = document.addjoin.email.value;
		if (document.addjoin.email.value.length >= 5) {
			// 서버에 아이디 전송
			ajax({
				url : "/user/MemberJoinEmailChk.bins",
				data : "joinEmail=" + joinEmail,
				callback : function(xhr) {
					// alert(xhr.responseText);
					onMessage(xhr, "email");
				}
			});
			checked = true;
		} else {
			setMessage("");
		}
	}

}

function onMessage(xhr, type) {
	console.log(xhr.responseText);
	var result = xhr.responseText;
	// setMessage(xhr);
	// console.log(result);
	if (result.trim() == "true") {// 아이디 중복 === : 타입까지 비교!!
		setMessage("사용가능합니다.", type);
	} else {
		setMessage("중복된 내역 입니다.", type);
	}
}

function setMessage(message, type) {
	var messageBox = document.getElementById(type + "messageBox");
	if (messageBox) {
		messageBox.innerHTML = message;
	}
	if (color) {
		messageBox.style.color = color;
	}
}
