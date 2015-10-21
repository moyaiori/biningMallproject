<%@ page contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function searchPost() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address').value = fullRoadAddr;
                document.getElementById('address').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
<div class="container">
	<h1>회원가입</h1>
	<form action="registProc.bins" method="post">
		<table class="table">
			<tr>
				<td>아이디</td>
				<td><input type="text" class="form-control" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" class="form-control" name="passwd"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" class="form-control"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" class="form-control" name="name"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" class="form-control" name="birth">	</td>
			</tr>
			<tr>
				<td>성별</td>
				<td><select class="form-control" name="gender">
						<option value="남">남자</option>
						<option value="여">여자</option>
				</select></td>
			</tr>
			<tr>
				<td>이메일주소</td>
				<td><input type="text" class="form-control" name="email"></td>
			</tr>
	
			<tr>
				<td>연락처</td>
				<td class="form-inline">
					<div class="form-group">
					<select class="form-control" name="phone">
						<option>010</option>
						<option>011</option>
						<option>017</option>
						<option>019</option>
						<option>070</option>
					</select>
				<input type="text"  size="4" class="form-control" name="phone2">
				<input type="text"  size="4" class="form-control" name="phone3">
				</div>
				</td>
			</tr>
	
			<tr>
			<td>주소</td>
			<td><input id="post" type="text" placeholder="우편번호" class="form-control"></td><td><input type="button" onclick="searchPost()" value="우편번호 찾기" class="btn btn-default"></td>
			</tr>
			<tr>
			<td></td>
			<td colspan="2"><input type="text" id="address"  name="address" size="35px" placeholder="기본주소" class="form-control"></td>
			</tr>
			<tr><td></td><td colspan="2"><input type="text" id="address2" name="address2" size="35px" placeholder="상세주소" class="form-control"></td></tr>
			
			<tr><td></td>
			<td colspan="2"><input type="submit" value="회원가입" class="btn btn-default">
			<input type="button" value="홈으로" class="btn btn-default"></td></tr>
		</table>
	</form>
</div>