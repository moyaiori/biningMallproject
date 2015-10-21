<%@ page contentType="text/html; charset=utf-8"%>
<!-- 
   작성일 : 2015/10/20
   작성자 : 가승호
   최종수정일 : 2015/10/20/ 17:15
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>주문페이지</title>

<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/product_view.css">

<style type="text/css">

img {
   width: 100px;
}

.table tbody>tr>td{
    vertical-align: middle;
}

.table td {
   text-align: center;   
}

.table th {
   text-align: center;   
}


.order tbody>tr>td{
    vertical-align: top;
}

.order tbody>tr>td>div>label{
   padding-bottom: 30px;
}

</style>

</head>
<body>

<div class="container">
   <table class="table">
      <colgroup>
         <col width="275" />
         <col width="275" />
         <col width="90" />
         <col width="90" />
         <col width="90" />
         <col width="90" />
         <col width="90" />
      </colgroup>
      
      <tr class="active">
         <th>상품사진</th>
         <th>상품명</th>
         <th>판매가</th>
         <th>수량</th>
         <th>배송비</th>
         <th>적립금</th>
         <th>합계</th>
      </tr>
      <tr>
         <td><img src='../images/완_스페셜2밥버거.jpg' /></td>
         <td>아주아주 맛있어요</td>
         <td>비닝이</td>
         <td>Good</td>
         <td>Good</td>
         <td>Good</td>
         <td>Good</td>
      </tr>
      <tr>
         <td><img src='../images/완_스페셜2밥버거.jpg' /></td>
         <td>아주아주 맛있어요</td>
         <td>비닝이</td>
         <td>Good</td>
         <td>Good</td>
         <td>Good</td>
         <td>Good</td>
      </tr>
   </table>
</div>

<div class="container">
   <table class="table order">
      <colgroup>
         <col width="250" />
         <col width="200" />
         <col width="550" />
      </colgroup>
      <tr>
         <td>01. 주문자 정보</td>
         <td>
            <div class="form-group" style="text-align: left;">
               <label style="padding-top: 8px;">주문하시는분</label><br>
               <label>전화번호</label><br>
               <label>핸드폰번호</label><br>
               <label>이메일</label>
            </div>
         </td>
         <td>
            <div class="form-group" style="text-align: left;">
               <input type="text" class="form-control"><br>
               <input type="text" class="form-control"><br>
               <input type="text" class="form-control"><br>
               <input type="text" class="form-control">
            </div>
         </td>
      </tr>
   </table>
</div>

<table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
<tbody><tr>
   <td width="150" valign="top" align="right" bgcolor="#F3F3F3">01주문자정보</td>
   <td style="padding:10px">

   <table>
   <colgroup><col width="100">
   </colgroup><tbody><tr>
      <td>주문하시는분</td>
      <td><input type="text" name="nameOrder" value="" style="font-weight:bold" required="" msgr="주문하시는분의 이름을 적어주세요"></td>
   </tr>
   <tr>
      <td>전화번호</td>
      <td>
      <input type="text" name="phoneOrder[]" value="" size="3" maxlength="3" option="regNum" required="" label="주문자 전화번호"> -
      <input type="text" name="phoneOrder[]" value="" size="4" maxlength="4" option="regNum" required="" label="주문자 전화번호"> -
      <input type="text" name="phoneOrder[]" value="" size="4" maxlength="4" option="regNum" required="" label="주문자 전화번호">
      </td>
   </tr>
   <tr>
      <td>핸드폰번호</td>
      <td>
      <input type="text" name="mobileOrder[]" value="" size="3" maxlength="3" option="regNum" required="" label="주문자 핸드폰번호"> -
      <input type="text" name="mobileOrder[]" value="" size="4" maxlength="4" option="regNum" required="" label="주문자 핸드폰번호"> -
      <input type="text" name="mobileOrder[]" value="" size="4" maxlength="4" option="regNum" required="" label="주문자 핸드폰번호">
      </td>
   </tr>
   <tr>
      <td>이메일</td>
      <td><input type="text" name="email" value="" required="" option="regEmail"></td>
   </tr>
   </tbody></table>

   </td>
</tr>
</tbody></table><div style="font-size:0;height:5px"></div>

<!-- 02 배송정보 -->
<table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
<tbody><tr>
   <td width="150" valign="top" align="right" bgcolor="#F3F3F3">02 배송정보</td>
   <td style="padding:10px">

   <table>
   <colgroup><col width="100">
   </colgroup><tbody><tr>
      <td>배송지 확인</td>
      <td>
      <input type="checkbox" > 주문고객 정보와 동일합니다
      </td>
   </tr>
   <tr>
      <td>받으실분</td>
      <td><input type="text" name="nameReceiver" value="" required=""></td>
   </tr>
   <tr>
      <td>받으실곳</td>
      <td>
      <input type="text" name="zipcode[]"  size="3" class="line" readonly="" value="" required=""> -
      <input type="text" name="zipcode[]" size="3" class="line" readonly="" value="" required="">
      다음에서 제공하는 오픈  API를 통해 해보자.
      </td>
   </tr>
   <tr>
      <td></td>
      <td><input type="text" name="address" id="address" readonly="" value="" required=""></td>
   </tr>
   <tr>
      <td></td>
      <td>
         <input type="text" name="address_sub" value=""  label="세부주소">
         <input type="hidden" name="road_address"  style="width:100%" value="" >
         <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;" ></div>
         <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" ></div>
      </td>
   </tr>
   <tr>
      <td>전화번호</td>
      <td>
      <input type="text" name="phoneReceiver[]" value="" size="3" maxlength="3" option="regNum" required="" label="수령자 전화번호"> -
      <input type="text" name="phoneReceiver[]" value="" size="4" maxlength="4" option="regNum" required="" label="수령자 전화번호"> -
      <input type="text" name="phoneReceiver[]" value="" size="4" maxlength="4" option="regNum" required="" label="수령자 전화번호">
      </td>
   </tr>
   <tr>
      <td>핸드폰번호</td>
      <td>
      <input type="text" name="mobileReceiver[]" value="" size="3" maxlength="3" option="regNum" required="" label="수령자 핸드폰번호"> -
      <input type="text" name="mobileReceiver[]" value="" size="4" maxlength="4" option="regNum" required="" label="수령자 핸드폰번호"> -
      <input type="text" name="mobileReceiver[]" value="" size="4" maxlength="4" option="regNum" required="" label="수령자 핸드폰번호">
      </td>
   </tr>
   <tr>
      <td>남기실 말씀</td>
      <td><input type="text" name="memo" style="width:100%"></td>
   </tr>
   <tr><td colspan="2">&nbsp;</td></tr>
   <tr id="paper_delivery_menu">
      <td>배송선택</td>
      <td class="noline">

      <div style="float:left"><input type="radio" name="deliPoli" value="0" checked="" > 기본배송</div>
      </td>
   </tr>
   </tbody></table>

   </td>
</tr>
</tbody></table><div style="font-size:0;height:5px"></div>

<!-- 03 결제금액 -->
<table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
<tbody><tr>
   <td width="150" valign="top" align="right" bgcolor="#F3F3F3">03 결제금액</td>
   <td style="padding:10px">

   <table>
   <colgroup><col width="100">
   </colgroup><tbody><tr>
      <td>상품합계금액</td>
      <td><p style="width:146px;text-align:right;font-weight:bold;float:left;margin:0">0</p> 원</td>
   </tr>
   <tr>
      <td>배송비</td>
      <td>
      <div style="display: block;"><div style="width:146px;text-align:right;font-weight:bold;float:left;margin:0">0</div>원</div>
      <div style="display:none;width:160;text-align:right"></div>
      <div style="display:none;"></div>
      </td>
   </tr>


   <tr>
      <td>총 결제금액</td>
      <td><span id="paper_settlement" style="width:146px;text-align:right;font:bold 14px tahoma; color:FF6C68;">0</span> 원</td>
   </tr>
   </tbody></table>
   </td>
</tr>
</tbody></table><div style="font-size:0;height:5px"></div>
<!-- 구매안전표시 start --><table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
                  <tbody><tr><td style="padding-left:25px;padding-top:10px;" height="70" valign="middle">
                     <div style="height:20px;">* 고객님은 안전거래를 위하여 현금 등으로 결제시 저희 쇼핑몰에서 가입한 <span class="red"><b>KCP의 구매안전(에스크로)</b></span></div>
                     <div style="height:20px;padding-left:10px;"><span class="red"><b>서비스</b></span>를 이용하실 수 있습니다.</div>
                  </td></tr>
                  </tbody></table><div style="font-size:0;height:5px"></div><!-- 구매안전표시 end -->
<!-- 04 결제수단 -->
<table width="100%" style="border:1px solid #DEDEDE" cellpadding="0" cellspacing="0">
<tbody><tr>
   <td width="150" valign="top" align="right" bgcolor="#F3F3F3">04 결제수단</td>
   <td style="padding:10px">

   <input type="hidden" name="escrow" value="N">
   <table>
   <colgroup><col width="100">
   </colgroup><tbody><tr>
      <td>일반결제</td>
      <td class="noline">
      <input type="radio" name="settlekind" value="a" onclick="input_escrow(this,'N')"> 무통장입금
      <input type="radio" name="settlekind" value="c" onclick="input_escrow(this,'N')"> 신용카드
      <input type="radio" name="settlekind" value="o" onclick="input_escrow(this,'N')"> 계좌이체
      <input type="radio" name="settlekind" value="v" onclick="input_escrow(this,'N')"> 가상계좌
      <input type="radio" name="settlekind" value="h" onclick="input_escrow(this,'N')"> 핸드폰
      </td>
   </tr>



   <tr>
      <th></th>
      <td>(무통장입금의 경우 입금확인 후부터 배송단계가 진행됩니다)</td>
   </tr>
   <tr>
      <th></th>
      <td><div style="display:none">무통장입금에서만 사용가능한 쿠폰을 선택하였습니다. <br>다른 결제 수단을 선택하시려면 쿠폰을 제거 하여 주십시오.</div></td>
   </tr>
   </tbody></table>



   </td>
</tr>
</tbody></table>

<div style="padding:20px" align="center" >
<input onclick="location.href='../order/ordercheck.bins'" type="button" class="btn btn-default" value="주문"/>
<input type="button" value="취소">
</div>

</body>
</html>