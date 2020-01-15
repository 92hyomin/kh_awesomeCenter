<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 정보 상세 정보</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

   #admin_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
      
   }
   
   #admin_h2 h2 {
     font-weight: 500;
      font-size: 52px;
      margin-top: 50px;
      margin-bottom : 40px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   }
   
   #admin_nvar div {    
      display: inline-block;
      font-size: 14px;
      margin: 2px 12px 0;
      color : #666;
      font-weight: 400;
   }
   
   #container {
   		width:95%;
   		margin: 0 auto;
   		font-size: 10pt;
   }
   
   #main_container{
   		width : 70%;
   		margin: 0 auto;
   }
   
  
   .tblTop {
   		margin: 40px 0 0 5px;
	 	text-align: left;
   }

   .tblTop > h5 {
   		font-weight: bold;
   }

   .infoDivClass {
  		 overflow: hidden;
   }
   
   #infoDiv1_img {
    	border: solid 1px #ddd;
   		float:left;
   		width: 25%;
   		height: 100%;
   }
   
   #infoDiv1_tbl {
   		float:right;
   		width : 72%;
   		height: 100%;
   }
   
   
  .teacherInfo th {
  	 background-color: #f9f2eb;
  	 width : 110px;
  	 padding: 4px;
  	 vertical-align: middle !important;
  }
  
  #teacherInfo2 td, #teacherInfo2 th {
  	text-align: center;
  }
  
  #postCodeBtn{
  	height: 23px;
  	width: 35px;
  	font-size: 8pt;
  	text-align: center;
  	vertical-align: middle;
  }
  
  #postCodeSpan {
  	font-size: 8pt;
  	text-align: center;
  	vertical-align: middle;
  }
  
  .addrInput {
  	margin-right:7px;
  	border: hidden;
  	border-bottom: solid 1px #d9d9d9 !important;
  }
   
   .t_categorySelect {
    	padding : 4px;
   		margin-right: 10px;
   }
   
   .detainBtn {
   		width : 140px;
   		height : 50px;
   		background-color: #5e4122;
   		color: white;
   		font-size: 19px;
   		margin: 60px 10px;
   }
   
  
</style>


<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> <!--다음 우편번호 -->

<script type="text/javascript">
//우편번호 찾기 버튼
	function goSearchPostCode(){
		new daum.Postcode({
		oncomplete: function(data) {
			 // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                } 
            } 
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
           // document.getElementById("addr2").focus();
			    
		}
	}).open();
	}//goSearchPostCode------------

</script>
</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 180px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강사 상세 정보</div>
      	</div>
      	
		<div align="center" id="admin_h2">
			<h2>강사 상세 정보</h2>
		</div>


		<div id="main_container">

			<div id="infoDiv1" class="infoDivClass" style="margin-top: 60px;">
				<div id="infoDiv1_img">
					<img src="resources/images/sampleImg.jpg" width="100%;" />
				</div>

				<div id="infoDiv1_tbl">

					<table class="table table-bordered teacherInfo" id="teacherInfo1">
						<tr>
							<th>성명</th>
							<td>지서영</td>
							<th>이메일</th>
							<td>aaa@naver.com</td>
						</tr>
						<tr>
							<th>주민등록번호</th>
							<td>111111-2222222</td>
							<th>연락처1</th>
							<td>01000000000</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>여자</td>
							<th>연락처2</th>
							<td>01000000000</td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td colspan="3">12345</td>
						</tr>
						<tr>
							<th>자택주소</th>
							<td colspan="3">경기도 고양시 일산동구</td>
						</tr>
					</table>

				</div>
				<!-- infoDiv1_tbl -->
			</div>
			<!-- infoDiv1 -->

			<div id="infoDiv2" class="infoDivClass">
				<div class="tblTop">
					<h5>구분</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo2">
					<tr>
						<th>강사코드</th>
						<th>담당분야</th>
						<th>입사일자</th>
						<th>고용상태</th>
					</tr>
					<tr>
						<td>1234</td>
						<td>베이킹</td>
						<td>2020.01.08</td>
						<td>재직중</td>
					</tr>
				</table>
			</div>
			<!-- infoDiv2 -->

			<div id="infoDiv3" class="infoDivClass">
				<div class="tblTop">
					<h5>학력 사항</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo3">
					<tr>
						<th style="text-align: center;">학교명</th>
						<td></td>
					</tr>
					<tr>
						<th style="text-align: center;">전공</th>
						<td></td>
					</tr>
				</table>
			</div>
			<!-- infoDiv3 -->

			<div id="infoDiv4" class="infoDivClass">
				<div class="tblTop">
					<h5>경력 사항</h5>
				</div>

				<table class="table table-bordered teacherInfo" id="teacherInfo4">
					<tr>
						<th style="text-align: center; height:60px;">근무처</th>
						<td></td>
					</tr>
					<tr>
						<th style="text-align: center; height:60px;">근무처</th>
						<td></td>
					</tr>
				</table>
			</div>
			<!-- infoDiv4 -->

			<div align="center">
				<button type="button" class="btn detainBtn" id="registerBtn">목록</button>
				<button type="button" class="btn detainBtn" id="resetBtn">수정</button>
			</div>

		</div> <!-- main_container -->
	</div> <!-- container -->
</body>
</html>