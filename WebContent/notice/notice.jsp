<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

<div class="container">
	<div class="content">
		<form action="" method="post">
				<table class="table">
						<colgroup>
							<col width="75" />
							<col width="600" />
							<col width="110" />
							<col width="130" />
							<col width="85" />
						</colgroup>
						<tr class="active">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
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
							<td>43</td>
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
		</div>
		
		<form class="form-inline" method="get">
			<div class="form-group">
				<select class="form-control" style="width:95px;" name="sfl" id="">
					<option value="subject">제목</option>
					<option value="content">내용</option>
					<option value="writer">글쓴이</option>
				</select>
				<input class="form-control" type="text"  class="" style="width:220;" name="stx" value="" required id="stx" />
				<input class="form-control" type="button" src="" value="검색"/>
			</div>
		</form>
		
		
		<div class="text-center">
			<ul class="pagination">
				<li><a href="" >&lt;&lt;</a></li>
				<li><a href="" >&lt;</a></li>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
				<li><a href="" >&gt;</a></li>
				<li><a href="" >&gt;&gt;</a></li>
			</ul>
		</div>
	</div>