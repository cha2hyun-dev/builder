<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<form action="/allba/${sitename}/board/modify" method="post" enctype="multipart/form-data">
		<input type="hidden" name="boardid" value="${view.boardid}" /><br />
		<input type="hidden" name="userid" value="${allbamember.getUserid()}" /><br />
		
		<label>제목</label> 
			<input type="text" name="title" value="${view.title}" /><br /> 
		
		<label>경력</label>
			<select name="career">
				<option value="all" <c:if test="${view.career eq '무관'}"> selected </c:if>>무관</option>
				<option value="new" <c:if test="${view.career eq '신입'}"> selected </c:if>>신입</option>
				<option value="experienced" <c:if test="${view.career eq '경력'}"> selected </c:if>>경력</option>
			</select> <br /> 
		
		<label>성별 </label>
		 	<select name="gender">
				<option value="남자">남자</option>
				<option value="여자">여자</option>
				<option value="all">all</option>
			</select> <br /> 
		
		<label>모집 직종 </label> 
			<select name="occupation">
				<option value="매장관리">매장관리</option>
				<option value="서빙주방">서빙주방</option>
				<option value="서비스/미디어">서비스/미디어</option>
				<option value="고객상담/영업/리서치">고객상담/영업/리서치</option>
				<option value="강사교육">강사교육</option>
				<option value="생산/기능/운전/배달">생산/기능/운전/배달</option>
				<option value="사무회계">사무회계</option>
				<option value="it디자인">it디자인</option>
			</select> <br />
			
		 <label>근무 기간</label> 
		 	<select name="date">
				<option value="1일">1일</option>
				<option value="1주일이내">1주일이내</option>
				<option value="1주일~1개월">1주일~1개월</option>
				<option value="1개월~3개월">1개월~3개월</option>
				<option value="3개월~6개월">3개월~6개월</option>
				<option value="6개월~1년">6개월~1년</option>
				<option value="1년이상">1년이상</option>
			</select> <br /> 
			
		<label>지역 </label> 
			<select name="location">
				<option value="서울">서울</option>
				<option value="부산">부산</option>
				<option value="인천">인천</option>
			</select> <br />
			
		 <label>근무지 주소</label> 
		 	<input type="text" name="address" value ="${view.address}"/><br />
		 	
		<label>시급</label> 
			<input type="text" name="money" value = "${view.money}"/>원<br /> 
			
		 <label>이미지</label>
 			 <input type="file" name="file" /> <br/>
			 <img src="${view.image}" />
 			 <input type="hidden" name="image" value="${view.image}" /><br/>
			
		<label>내용</label>
			<textarea cols="50" rows="5" name="content">${view.content}</textarea><br />

		<label>마감날짜</label>
			<input type="date" name="deadline" value = "${view.deadline}"/> <br/>
			
		<button type="submit">수정</button>

	</form>
</body>
</html>