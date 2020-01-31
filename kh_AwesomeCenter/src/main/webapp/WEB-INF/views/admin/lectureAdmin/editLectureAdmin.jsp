<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기</title>
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
   
   #line {
   	  border: dashed  1px #bfbfbf;
   	  width : 70%;
   	  margin-top: 30px;
   }
   
    .tblTop {
   		margin: 40px 0 0 5px;
	 	text-align: left;
   }

   .tblTop > h5 {
   		font-weight: bold;
   }
   
   
   .lectureInfo th {
   	  text-align: center;
   	  background-color: #e6e6e6;
   	  color : #404040;
   	  width : 150px;
   	  vertical-align: middle !important;
   }
   
   .lectureInfo td {
   	  text-align: left;

   }
   
   .checkbox-inline {
   	 padding: 0 15px 0 3px;
   }
   
   .categorySelect {
    	padding : 4px;
   }
   
   
   input[name=radioCheck] {
		margin: 5px 5px 4px 0;
	}
   
   .categorySelect {
   		margin-right: 10px;
   		padding: 2px;
   		font-size: 11pt;
   		
   }
   
   #registerBtn, #resetBtn {
   		width : 140px;
   		height : 50px;
   		background-color: #262626;
   		color: white;
   		font-size: 19px;
   		margin: 10px;
   }
   
   #btnDiv {
   		margin: 50px 0 80px 0;
   }
   
   #searchBtn {	
  		margin: 7px 0 0 30px;
  		width:60px;
  		font-size: 5px;
  		padding:2px;
  
   }
   
   .border_hide {
   		border : none;
   }
   
   .error {
   		padding-left:5px;
   		color:red;
   		font-size:9px;
   		font-weight: bold;
   }
  
   

</style>

<script type="text/javascript">

	$(document).ready(function(){
				
		/* 수강기간에 오늘 날짜 기본 입력 */
		//document.getElementById('startDate').valueAsDate = new Date();
	//	document.getElementById('endDate').valueAsDate = new Date();
		
		//var startDate = $('#startDate').val();
		
		/* 수강기간 불러오기*/
		var startStr = "${lectureInfo.class_startDate}";
		var startArr = startStr.split('.');	
		startArr = startArr.join("-");
		$("#class_startDate").val(startArr);
			
		var endStr = "${lectureInfo.class_endDate}";
		var endStrArr = endStr.split('.');
		endStrArr = endStrArr.join("-");	
		$("#class_endDate").val(endStrArr);
		
		/* 수업시간 불러오기*/
		var timeStr = "${lectureInfo.class_time}";
		var start1 = timeStr.substring(0,2);
		var end1 = timeStr.substring(3,5);
		var start2 = timeStr.substring(6,8);
		var end2 = timeStr.substring(9,11);
		$("#hh1").val(start1);
		$("#hh2").val(start2);
		$("#mm1").val(end1);
		$("#mm2").val(end2);
		
		//17:40~18:30
		/* 성인/아동별 옵션 show,hide */
		$('#cate_code').change(function(){
	
	       if( $('#cate_code option:selected').val() =='adult' ){
	       	$('#fk_cate_no').find('[value=7]').hide();
	       	$('#fk_cate_no').find('[value=8]').hide();
	       	$('#fk_cate_no').find('[value=9]').hide();
	       }
	       else if ($('#cate_code option:selected').val() !='adult'){
	       	$('#fk_cate_no').find('[value=7]').show();
	       	$('#fk_cate_no').find('[value=8]').show();
	       	$('#fk_cate_no').find('[value=9]').show();
	       }
	       
	      if ($('#cate_code option:selected').val() =='child'){
	       	$('#fk_cate_no').find('[value=1]').hide();
	       	$('#fk_cate_no').find('[value=2]').hide();
	       	$('#fk_cate_no').find('[value=3]').hide();
	       	$('#fk_cate_no').find('[value=4]').hide();
	       	$('#fk_cate_no').find('[value=5]').hide();
	       	$('#fk_cate_no').find('[value=6]').hide();  	        	
	       }
	       else if ($('#cate_code option:selected').val() !='child'){
	       	$('#fk_cate_no').find('[value=1]').show();
	       	$('#fk_cate_no').find('[value=2]').show();
	       	$('#fk_cate_no').find('[value=3]').show();
	       	$('#fk_cate_no').find('[value=4]').show();
	       	$('#fk_cate_no').find('[value=5]').show();
	       	$('#fk_cate_no').find('[value=6]').show();  
	       }
	      });//searchCode---
	      
      
	      
	      /* 강좌 제목 자동 재입력 */
	      $('#title').blur(function(){
	    	  var title =  $('#title').val();
	    	  $('#title2').val(title);
	      }); 
	
		 
		 /* 수강시간 00 표기 */
		 $(".mm").blur(function(){			 	 
			 if($("#mm1").val() == '0'){
				 $(this).val('00');
			 }
			 if($("#mm2").val() == '0'){
				 $(this).val('00');
			 } 
	      }); 
		 

		 /* 스마트 에디터 */
	        var obj = []; //전역변수
		    
		    //스마트에디터 프레임생성
		    nhn.husky.EZCreator.createInIFrame({
		        oAppRef: obj,
		        elPlaceHolder: "class_content",
		        sSkinURI: "<%= request.getContextPath() %>/resources/smarteditor/SmartEditor2Skin.html",
		        htParams : {
		            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseToolbar : true,            
		            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseVerticalResizer : true,    
		            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		            bUseModeChanger : true,
		        }
	       
			 });
	        
		  
			
		  $("#registerBtn").click(function(){
			  
			//textarea에 에디터 대입
			  obj.getById["class_content"].exec("UPDATE_CONTENTS_FIELD", []); 
			
			  <%-- === 스마트에디터 구현 시작 ================================================================ --%>
				//스마트에디터 사용시 무의미하게 생기는 p태그 제거
		        var contentval = $("#class_content").val();
			        
		        // === 확인용 ===
		        // alert(contentval); // content에 내용을 아무것도 입력치 않고 쓰기할 경우 알아보는것.
		        // "<p>&nbsp;</p>" 이라고 나온다.
		        
		        // 스마트에디터 사용시 무의미하게 생기는 p태그 제거하기전에 먼저 유효성 검사를 하도록 한다.
		        // 글내용 유효성 검사 (스마트에디터 버전)
		        /* if(contentval == "" || contentval == "<p>&nbsp;</p>") {
		        	alert("강좌 내용을 입력하세요.");
		        	return;
		        } */
		        
		        // 스마트에디터 사용시 무의미하게 생기는 p태그 제거하기
		        contentval = $("#class_content").val().replace(/<p><br><\/p>/gi, "<br>"); //<p><br></p> -> <br>로 변환
		    /*    
		              대상문자열.replace(/찾을 문자열/gi, "변경할 문자열");
		        ==> 여기서 꼭 알아야 될 점은 나누기(/)표시안에 넣는 찾을 문자열의 따옴표는 없어야 한다는 점입니다. 
		                     그리고 뒤의 gi는 다음을 의미합니다.

		        	g : 전체 모든 문자열을 변경 global
		        	i : 영문 대소문자를 무시, 모두 일치하는 패턴 검색 ignore
		    */    
		        contentval = contentval.replace(/<\/p><p>/gi, "<br>"); //</p><p> -> <br>로 변환  
		        contentval = contentval.replace(/(<\/p><br>|<p><br>)/gi, "<br><br>"); //</p><br>, <p><br> -> <br><br>로 변환
		        contentval = contentval.replace(/(<p>|<\/p>)/gi, ""); //<p> 또는 </p> 모두 제거시
		    
		        $("#class_content").val(contentval);
			 <%-- === 스마트에디터 구현 끝 =================================================================== --%> 
			 
			 func_register();
		  });
		
		 
	});//$(document).ready(function()
	
	/* 접수기간 계산하기 */
 	function goSearchDate(){
 		
		var startDate = $('#class_startDate').val(); //시작날짜
		
		var year = new Date(startDate).getYear()-100; //시작날짜 연도
		var month = new Date(startDate).getMonth(); //시작날짜의 월
		var day = new Date(month).getDate(-1); //시작날짜 1일
		var lastDay   = new Date( year, month ,0); 
		lastDay   = lastDay.getDate(); //시작날짜 말일
	
		if(month == 0){
			year = new Date(startDate).getYear()-101;
			month = 12;
		}
		
		var applyStartDate = "20"+year+"."+month+"."+day;
		var applyLastDay = "20"+year+"."+month+"."+lastDay;
	
		$("#applyDay1").val(applyStartDate);
		$("#applyDay2").val(applyLastDay);	
	} 
 	
	/* 수정사항 저장하기 */
	function goUpdate(){	
		
		/* 수강시간 value값 합치기 */
		var time = $("#hh1").val()+":"+$("#mm1").val()+"~"+$("#hh2").val()+":"+$("#mm2").val()
		$("#class_time").val(time);
		
		
		/* 유효성 검사  */
		var require = $(".require").val().trim();
		if(require == "" || require == null) {
			alert("강좌 정보를 모두 입력해야 등록이 가능합니다.");
			return;
		} 
		
		/* 타입 유효성 검사 */
		
		
		
		
	
		var frm = document.lectureInfoFrm;
		frm.method = "POST";
		frm.action = "<%= request.getContextPath()%>/editLectureEndAdmin.to";
		frm.submit(); 
		
	}
 	


</script>

</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 250px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강좌 정보 수정</div>
      	</div>
	
	  <div align="center" id = "admin_h2">
         <h2>강좌 정보 수정</h2>
      </div>
      
      <hr id="line"/>
      
      <div id="main_container">
      <form name="lectureInfoFrm" enctype="multipart/form-data">
  
      	<table class="table table-bordered lectureInfo" id="lectureInfo1">
      		<tr>
      			<th style="width:350px;">지점</th>
      			<th style="width:350px;">학기</th>
      			<th style="width:350px;">수강기간</th>
      		</tr>
      		
      		<tr>
      			<td style="text-align: center;">본점</td>
      			<td style="text-align: center;">
      				<select class="semester require" name="class_semester" id="class_semester">
						<option value="">학기 선택</option>
						<option value="1월">1월</option>
						<option value="2월">2월</option>
						<option value="3월">3월</option>
						<option value="4월">4월</option>
		 				<option value="5월">5월</option>
						<option value="6월">6월</option>							
						<option value="7월">7월</option>
						<option value="8월">8월</option>	
						<option value="9월">9월</option>	
						<option value="10월">10월</option>
						<option value="11월">11월</option>
						<option value="12월">12월</option>	 
						
						<%-- <option value="1월">1월</option>
						<option value="2월" <c:if test="${lectureInfo.class_semester == '2월'}">selected</c:if>>2월</option>
						<option value="3월" <c:if test="${lectureInfo.class_semester == '3월'}">selected</c:if>>3월</option>
						<option value="4월" <c:if test="${lectureInfo.class_semester == '4월'}">selected</c:if>>4월</option>
		 				<option value="5월" <c:if test="${lectureInfo.class_semester eq '5월'}">selected</c:if>>5월</option>
						<option value="6월" <c:if test="${lectureInfo.class_semester eq '6월'}">selected</c:if>>6월</option>							
						<option value="7월" <c:if test="${lectureInfo.class_semester eq '7월'}">selected</c:if>>7월</option>
						<option value="8월" <c:if test="${lectureInfo.class_semester eq '8월'}">selected</c:if>>8월</option>	
						<option value="9월" <c:if test="${lectureInfo.class_semester eq '9월'}">selected</c:if>>9월</option>	
						<option value="10월" <c:if test="${lectureInfo.class_semester eq '10월'}">selected</c:if>>10월</option>
						<option value="11월" <c:if test="${lectureInfo.class_semester eq '11월'}">selected</c:if>>11월</option>
						<option value="12월" <c:if test="${lectureInfo.class_semester eq '12월'}">selected</c:if>>12월</option>	 --%>
					</select> 
					
					
      			</td>
      			<td style="text-align: center;">
      				<input type="date" min="2017-01-01" max="2100-12-31" id="class_startDate" class="require" name="class_startDate" /><span id="show"> ~ </span><input type="date" min="2017-01-01" max="2100-12-31" id="class_endDate" class="require" name="class_endDate"  />
      				<button type="button" class="btn adminBtn" id='searchBtn' onclick="goSearchDate();">접수기간<br/>입력</button>
      			</td>	
      		</tr>    		
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo2">
      		<tr>
      			<th>강좌명</th>
      			<td><input type="text" name="class_title" id="title"  class="require" value="${lectureInfo.class_title}"/><span id="error_text" class="error">※문자만 입력 가능</span></td>
      			<th>담당강사 코드</th>
      			<td><input type="text" name="fk_teacher_seq" class="require" value="${lectureInfo.fk_teacher_seq}"/><span id="error_num" class="error">※숫자만 입력 가능</span></td>
      		</tr>
      		<tr>
      			<th>수업일</th>
      			<td><input type="text" name="class_day" class="require" placeholder="(ex. 월)" value="${lectureInfo.class_day}"/><span id="error_text" class="error">※문자만 입력 가능</span></td>
      			<th>수업시간</th>
      			<td>시작 시간 : <input type="number" id="hh1" class="time require" min="09" max="21"  />&nbsp;:&nbsp;<input type="number" id="mm1" class="time mm require" min="00" max="50" step="10"  /><br/>
					종료 시간 : <input type="number" id="hh2" class="time require" min="10" max="22"  />&nbsp;:&nbsp;<input type="number" id="mm2" class="time mm require" min="00" max="50" step="10"  />      			
      				<input type="hidden" name="class_time" id="class_time"/>
      			</td>
      		</tr>
      		<tr>
      			<th>강의실</th>
      			<td><input type="text" name="class_place" class="require" value="${lectureInfo.class_place}"/></td>
      			<th>수강정원</th>
      			<td><input type="text" name="class_personnel" class="require" value="${lectureInfo.class_personnel}"/></td>
      			
      		</tr>
      		<tr>	
      			<th>수강료</th>
      			<td><input type="text" name="class_fee" class="require" value="${lectureInfo.class_fee}"/></td>
      			<th>회당 재료비</th>
      			<td><input type="text" name="class_subFee" class="require" value="${lectureInfo.class_subFee}"/></td>
      		</tr>	
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo3">
      		<tr>
      			<th>접수 상태</th>
      			<td>
      				<label class="checkbox-inline"><input type="radio" value="0" class="radioCheck" name="class_status" />대기접수</label>
      				<label class="checkbox-inline"><input type="radio" value="1" class="radioCheck" name="class_status" checked/>접수중</label>
      				<label class="checkbox-inline"><input type="radio" value="2" class="radioCheck" name="class_status"/>접수완료</label>      	
      			</td>     	
      		</tr>
      		<tr>
      			<th>강좌 카테고리</th>
      			<td>
	      			<select class="categorySelect" id="cate_code" class="require">  
						<option value="">1차 분류 선택</option>
						<option value="adult">성인</option>
						<option value="child">아동</option>					
					</select>   
					
					<select class="categorySelect" name="fk_cate_no" id="fk_cate_no" class="require" >
						<option value="">2차 분류 선택</option>
						<option value="1">건강/댄스</option>
						<option value="2">아트/플라워</option>
						<option value="3">음악/아트</option>
						<option value="4">쿠킹/레시피</option>
						<option value="5">출산/육아</option>
						<option value="6">어학/교양</option>												
						<option value="7">창의/체험</option>
						<option value="8">음악/미술/건강</option>	
						<option value="9">교육/오감발달</option>		
					</select>
      			</td>     	
      		</tr>
      		<tr>
      			<th>접수 기간</th>
      			<td>
      				<input type="text" class="border_hide" id="applyDay1" readonly/> ~ <input type="text" class="border_hide" id="applyDay2" readonly/>
      			</td>     	
      		</tr>
      		
      		
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo4">
      		<tr>
      			<th>강좌 제목</th>
      			<td><input type="text" id="title2" class="border_hide require" value="${lectureInfo.class_title}" readonly/></td>     	
      		</tr>
      		<tr>
      			<th>첨부 사진</th>
      			<td>
      				<input type="file" name="attach" class="require" value="${lectureInfo.class_photo}" />
      			</td>     	
      		</tr>
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo5">
      		<tr><th style="height: 60px;">강좌 상세 내역</th></tr>
      		<tr><td><textarea name="class_content" id="class_content" class="require" rows="10" cols="100" style="width: 99%; height: 412px; border:none;"></textarea></td></tr>
      	</table>
      	
      	 <div align="center" id="btnDiv">
	      	<button type="button" class="btn" id="registerBtn" onclick="goUpdate();">저장</button>
	      	<button type="button" class="btn" id="resetBtn" onclick="javascript:location.href='<%= request.getContextPath() %>/detailLectureAdmin.to?class_seq=${lectureInfo.class_seq}'">수정 취소</button>
	      </div>
	      
	      <input type="hidden" name="class_seq" value="${lectureInfo.class_seq}"/>
     </form>
     
     
      
      </div> <!--main_container  -->
   </div>   
</body>
</html>