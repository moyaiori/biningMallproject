<!-- 
	레이아웃 작성자 : 조현빈 
	레이아웃 수정최종 날짜 : 2015 -10 -20 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<div id="container">
	<div class="content">
		<p class="total">TOTAL <span>52</span></p>
		<form name=""  id="" action="" onsubmit="" method="post">
			<!-- 
				<input type="hidden" name="bo_table" value="inquiry">
				<input type="hidden" name="sfl" value="">
				<input type="hidden" name="stx" value="">
			 -->
				<table cellpadding="0" cellspacing="0" border="0" class="">
						<colgroup>
							<col width="75" />
							<col width="600" />
							<col width="110" />
							<col width="130" />
							<col width="85" />
						</colgroup>
						<tr>
							<th>NUM</th>
							<th>SUBJECT</th>
							<th>WRITER</th>
							<th>DATE</th>
							<th>COUNT</th>
						</tr>
							<tr>
							<td>52</td>
							<td class="">
								<a href="">입금확인</a>
							</td>
							<td><span class="">나미정</span></td>
							<td>14:47</td>
							<td>5</td>
							</tr>
							
							<tr>
							<td>
							43		</td>
							<td class="">
								
								<a href="">
									구매 전 필독!! </a>
					
										</td>
							<td><span class="">노대훈</span></td>
							<td>10-09</td>
							<td>5</td>
							</tr>
					</table>
		</form>

		<nav class="">
			<a href="" >&lt;</a>
			<a href="" >&lt;&lt;</a>
			<a href="">1</a>
			<a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>
			<a href="">5</a>
			<a href="">6</a>
			<a href="" >&gt;</a>
			<a href="" >&gt;&gt;</a>
		</div></span></nav>
		<form name="fsearch" method="get">
			<input type="hidden" name="bo_table" value="inquiry">
			<input type="hidden" name="sca" value="">
			<input type="hidden" name="sop" value="and">
			<div class="">
				<select class="" style="width:160px;" name="sfl" id="">
					<option value="wr_subject">DATE</option>
					<option value="wr_content">SUBJECT</option>
				</select>
				<input type="text"  class="" style="width:620px;" name="stx" value="" required id="stx" />
				<input type="button" src="" value="검색"/>
			</div>
		</form>
	</div>