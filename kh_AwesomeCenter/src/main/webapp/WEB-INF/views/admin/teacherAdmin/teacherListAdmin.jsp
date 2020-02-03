<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 리스트</title>
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
      margin-bottom: 20px;
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
   		width : 90%;
   		margin: 0 auto;
   }
   
   #admin_div {
   		margin : 60px 60px 100px 60px;
   }
   
   #admin_divOption {
   		margin: 7px 3px 7px 0;
   }
   
   .a_categorySelect {
   		height: 25px;
   		margin: 3px 3px 3px 0;
   }
   
   #searchName {
<<<<<<< HEAD
   		margin: 0 5px;
   		width: 190px;
   }
   
   #searchNameBtn {
   		background : #f8f2ec;
   		font-size: 9pt;
   		padding: 6px 10px;
   		margin-bottom: 3px;
=======
   		margin: 7px 5px 0 5px;
   		width: 130px;
   }
   
   #searchText {
   		width: 130px;
   }
   
   #searchNameBtn, #resetNameBtn {
   		background : #f8f2ec;
   		font-size: 9pt;
   		padding: 6px 10px;
   		margin:2px 0 3px 5px;
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
   }
   
   #teacherListTbl {
   	  border-top: solid 1px #5e4121;
   	  border-bottom: solid 1px #5e4121;
   }
   
   #teacherListTbl th {
   		height : 45px;
   		background-color: #ebd9c6;
   		vertical-align: middle;
   		text-align: center;
   			
   }
   
   #teacherListTbl td { 		
   		vertical-align: middle;
   		text-align: center;
   			
   }
  
  .adminBtn {
  	font-size: 10pt;
  	background-color: #661a00;
  	color : white;
  	padding: 3px 6px;
  	margin: 3px;
  }
  
  #newBtn {
  	float : right;
  	
  }
   
  
</style>

<script type="text/javascript">

<<<<<<< HEAD
	// 강사 이름 검색하기
	function goSearch(){	
		
	//	var searchName = $("#a_classCategory2 optin:selected").val();
	//	console.log(searchName);		
		
=======
	$(document).ready(function(){	
		
		 /* 성인/아동별 옵션 show,hide */
		$('#searchCode').change(function(){

	        if( $('#searchCode option:selected').val() =='adult' ){
	        	$('#searchName').find('[value=7]').hide();
	        	$('#searchName').find('[value=8]').hide();
	        	$('#searchName').find('[value=9]').hide();
	        }
	        else if ($('#searchCode option:selected').val() !='adult'){
	        	$('#searchName').find('[value=7]').show();
	        	$('#searchName').find('[value=8]').show();
	        	$('#searchName').find('[value=9]').show();
	        }
	        
	       if ($('#searchCode option:selected').val() =='child'){
	        	$('#searchName').find('[value=1]').hide();
	        	$('#searchName').find('[value=2]').hide();
	        	$('#searchName').find('[value=3]').hide();
	        	$('#searchName').find('[value=4]').hide();
	        	$('#searchName').find('[value=5]').hide();
	        	$('#searchName').find('[value=6]').hide();  	        	
	        }
	        else if ($('#searchCode option:selected').val() !='child'){
	        	$('#searchName').find('[value=1]').show();
	        	$('#searchName').find('[value=2]').show();
	        	$('#searchName').find('[value=3]').show();
	        	$('#searchName').find('[value=4]').show();
	        	$('#searchName').find('[value=5]').show();
	        	$('#searchName').find('[value=6]').show();  
	        }
	       
	       
	    /* ENTER키로 검색 */   
        $("#searchWord").keydown(function(event){
			if(event.keyCode == 13){ 
				goSearch();
			}
		});  
	       
	  
		

 		});	 
		
		 
		
		/* 검색값 유지하기  */
	   if(${paraMap != null}){
			$("#searchCode").val("${paraMap.searchCode}");
			$("#searchName").val("${paraMap.searchName}");
			$("#searchText").val("${paraMap.searchText}");
		//	$("#searchStatusArr").val("${paraMap.searchStatusArr}");			
	   }     
		
	   
	   /* 2차 카테고리로 검색하기 */
		/* var searchCode = $("#searchCode").val();
		
		if(searchCode == 'child' ){
			$("#searchName").val(['7','8','9']);
		} else {
			$("#searchName").val(['1','2','3','4','5','6']);
		}  */
		 
	   /* var searchCode = $("#searchCode").val();
		
		if(searchCode == 'child' ){
			$("#searchCode").val('아동');
		} else {
			$("#searchCode").val('성인');
		} 
 		 */
 		/* var searchCode = $("#searchCode").val();
 		 
 		 if(searchCode == 'child' ){
 			$("#searchName").val(['7','8','9']);
 			$("#searchCode").val('아동');
 		} else {
 			$("#searchName").val(['1','2','3','4','5','6']);
 			$("#searchCode").val('성인');
 		}  
		 */
		
	});//$(document).ready(function()
	


	/* 강사  검색하기 */
	function goSearch(){	
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
		var frm = document.searchFrm;
		frm.method = "GET";
		frm.action = "<%= request.getContextPath()%>/teacherListAdmin.to";
		frm.submit();
	}
	
<<<<<<< HEAD
=======
	/* 검색값 초기화하기 */
	function goReset(){		
		if(${paraMap != null}){
			$("#searchCode").val("");
			$("#searchName").val("");
			$("#searchText").val("");
			$("#searchStatus").val("");
	    }    
	}
	
	
	
	
	/* 상세 정보 보기 */
	function geDetail(teacher_seq){
		var frm = document.goDetailFrm;
		frm.teacher_seq.value = teacher_seq;
		frm.method = "GET";
		frm.action = "<%= request.getContextPath()%>/detailTeacherAdmin.to";
		frm.submit();
	}
	
	/* 정보 수정하기 */
	function goEdit(teacher_seq){
		var frm = document.goEditFrm;
		frm.teacher_seq.value = teacher_seq;
		frm.method = "GET";
		frm.action = "<%= request.getContextPath()%>/editTeacherAdmin.to";
		frm.submit();
	}
	
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9


</script>

</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 140px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강사 명단</div>
      	</div>
      	
		<div align="center" id="admin_h2">
			<h2>강사 명단</h2>
		</div>

		<div id="main_container">
	
		<div id="admin_div">
			
			<div id="admin_divOption">
			<form name="searchFrm">
<<<<<<< HEAD
				<select class="a_categorySelect" name="searchCode" id="a_classCategory1">
						<option value="">1차 카테고리</option>
						<option value="adult">성인</option>
						<option value="child">아동</option>
				</select>
				<select class="a_categorySelect" name="searchName" id="a_classCategory2">
						<option value="">2차 카테고리</option>
=======
				<select class="a_categorySelect" name="searchCode" id="searchCode">
						<option value="">1차 카테고리</option>
						<option value="adult">성인</option>
						<option value="child">아동</option>
				
						
				</select>
				<select class="a_categorySelect" name="searchName" id="searchName" >
						<option value="">2차 카테고리</option>					
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
						<option value="1">건강/댄스</option>
						<option value="2">아트/플라워</option>
						<option value="3">음악/아트</option>
						<option value="4">쿠킹/레시피</option>
						<option value="5">출산/육아</option>
						<option value="6">어학/교양</option>
<<<<<<< HEAD
=======
												
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
						<option value="7">창의/체험</option>
						<option value="8">음악/미술/건강</option>	
						<option value="9">교육/오감발달</option>		
				</select>
<<<<<<< HEAD
				<input type="text" name="searchText" id="searchText"/>
				<button type="button" id="searchNameBtn" class="btn" onclick="goSearch();">검색</button>
				</form>
=======
				<input type="text" name="searchText" id="searchText" placeholder=" 이름을 입력하세요"/>
				<button type="button" id="searchNameBtn" class="btn" onclick="goSearch();">검색</button>
				<button type="button" id="resetNameBtn" class="btn" onclick="goReset();">초기화</button>

				<div>
					<label for="status1">재직</label><input type="checkbox" name="searchStatus" id="status1" value="1" class="status"/>
					<label for="status2">휴직</label><input type="checkbox" name="searchStatus" id="status2" value="2" class="status"/>
					<label for="status0">퇴사</label><input type="checkbox" name="searchStatus" id="status0" value="0" class="status"/>
				</div>
				</form>
				
				
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
			</div> <!-- admin_divOption -->	
		
		<div id="admin_divTbl">
		 <table class="table table-condensed" id="teacherListTbl">
		 	 <thead>
			      <tr>
			        <th>강사 코드</th>
			        <th>강사명</th>
			        <th>카테고리1</th>
			        <th>카테고리2</th>
			        <th>성별</th>
			        <th>입사일자</th>
			        <th>고용상태</th>
			        <th></th>
			      </tr>
			  </thead>
			  <tbody>
<<<<<<< HEAD
			  	<c:forEach var="teachervo" items="${teacherList}" varStatus="status">
=======
			  	  
			  	<c:forEach var="teachervo" items="${teacherList}" varStatus="status">
			      
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
			      <tr>
			        <td>${teachervo.teacher_seq}</td>
			        <td>${teachervo.teacher_name}</td>
			        <td>${teachervo.cate_code}</td>
			        <td>${teachervo.cate_name}</td>
			        <td>${teachervo.teacher_gender}</td>
			        <td>${teachervo.teacher_registerday}</td>
			        <td>${teachervo.teacher_status}</td>
			        <td>
<<<<<<< HEAD
			        	<button type="button" class="btn adminBtn" id="editBtn">정보수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn">상세</button>
			        </td>
			      </tr>	
			      </c:forEach>
=======
			        	<button type="button" class="btn adminBtn" id="editBtn" onclick="goEdit('${teachervo.teacher_seq}');">정보수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn" onclick="geDetail('${teachervo.teacher_seq}');">상세</button>
			        </td>
			      </tr>
			      </c:forEach>
			      
			      
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
			   </tbody>
		 </table> <!-- lectureList -->
		</div><!-- admin_divTbl -->
		
<<<<<<< HEAD
		<div>${pageBar}</div>
			</div> <!-- admin_div -->
=======
		<div align="">${pageBar}</div>
		
		<div>
			<button type="button" class="btn newBtn" id="newBtn" onclick="javascript:location.href='<%= request.getContextPath()%>/registerTeacherAdmin.to'">신규 강사 등록</button></div>
		</div> <!-- admin_div -->
>>>>>>> 8ca23635c0d7ac9ce2ec710b3ae4ba1d3bb869d9
			
		<!-- 	<hr id="line"/> -->
		</div>	
		
		<form name="goDetailFrm">
		<input type="hidden" name="teacher_seq" />
		</form>
		
		<form name="goEditFrm">
		<input type="hidden" name="teacher_seq" />
		</form>
	</div> <!-- container -->
</body>
</html>