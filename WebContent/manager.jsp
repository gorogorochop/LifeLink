<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
  	<style>
		#logout{
			padding : 10px;
			background-color:#EAEAEA;
			
		}	
		#login{
			position: absolute;
			padding : 10px;
			font-size:200%;
			border:1px solid black;
			right : 500px;
			bottom: 350px;
		}
		#board{
			margin : 20px;
			padding: 20px;
			float: left;
			border:1px solid black;
			width: 70%;
			
		}
		#container{
			width: 15%;
			float: right;
			position: absolute;
			padding: 20px;
			margin-top : 20px;
			width: 300px;
			right : 10px;
		}
		#out{
			position: absolute;
		    right: 0px;
		    width: 100px;
		    padding-right: 10px;
		    margin-right: 10px;
		}
		.training_area{
			position: absolute;
			
			margin : 10px;
			padding : 10px;
			left : 30px;
		}
		#saving{
			border:2px solid black;
			padding :10px;
		}
		#training{
			width: 100px;
			padding: 5px;		
			margin-top : 10px;
			border:2px solid black;
		}
	</style>
  <script>
  $(document).ready(function(){
	  var auth_state = 1;
	  $(".training_area").hide();
	  $(".afterAuth").hide();  
	  $("#auth").click(function(){
		  $("#login").slideToggle();
	  	  $(".afterAuth").slideToggle();
	  });
	  $("#out").click(function(){
		  $("#login").slideToggle();
	  	  $(".afterAuth").slideToggle();  
	  });
	  $("#board_area").click(function(){
		  auth_state = 1;
		  $(".board_area").show();
		  $(".training_area").hide();
	  });
	  $("#training_area").click(function(){
		  auth_state = 0;
		  $(".training_area").show();
		  $(".board_area").hide();
	  });
	  
	  $("tr").click(function(){
		 var subject = $(this).eq(0).find("td").eq(1).html();
		 var description = $(this).eq(0).find("td").eq(2).html();
		  
		 document.getElementById("subject").innerHTML = subject;
		 document.getElementById("description").innerHTML = description;
		
	  });
	  
  });
  </script>	

</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Life Link 관리자 페이지</title>
 <body>
 <div id = "login">
 	<p>Input Password   
 	<textarea id="auth_secret" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;"></textarea>
 	<button type="button" id="auth" class="btn btn-primary">인증</button>
 	</p>
 </div>
 <div class = "afterAuth">
	 <div id = "logout" class = "afterAuth">
	 	<button type="button" id="out" class="btn btn-primary">로그아웃</button>
	 	<button type="button" id="board_area" class="btn btn-primary">Report</button>
	 	<button type="button" id="training_area" class="btn btn-primary">Training</button>
	 </div>
	<div class = "board_area">
		 <div id ="board">
		
				<table width="100%" cellpadding="0" cellspacing="0" border="0" class="table table-hover">
				 <tr style="text-align:center;">
				   <td width="73px">번호</td>
				   <td width="173px">제목</td>
				   <td width="679px">내용</td>
				 </tr>
				 <tr id = "1">
				 	<td style="margin: auto;" class = "number">1</td>
			 		<td id = "a1">재밌어 죽겠다</td>
			 		<td id = "b1">재밌어 죽겠다라는 내용이 부정적인 표현으로 분석되었어요</td>
				 </tr>
				 <tr id = "2">
				 	<td>2</td>
				 	<td>22</td>
				 	<td>내용 없음</td>
				 </tr>
				 <tr id = "3">
				 	<td>3</td>
				 	<td>33</td>
				 	<td>내용없음</td>
				 </tr>
				  <tr id = "4">
				 	<td>4</td>
				 	<td>44</td>
				 	<td>내용없음</td>
				 </tr>
				  <tr id = "5">
				 	<td>5</td>
				 	<td>55</td>
				 	<td>내용없음</td>
				 </tr>
				
				 </table>
				 
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
				  <tr><td colspan="4" height="5"></td></tr>
			
				</table>
				<a href="Manager">DB 열람</a>
		</div>	
		<div id="container" style="border:1px solid black;">
		     <div id="inputArea">
		        <div id="inputField">
		           <textarea id="subject" readonly="readonly" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;">재밌어 죽겠다</textarea><p>
		           <textarea id="description" readonly="readonly" rows="5" cols = "30">재밌어 죽겠다라는 내용이 부정적인 표현으로 분석되었어요</textarea><p>
		           <button type="button" onclick="deleteTable(1);" class="btn btn-primary">수락</button>
		           <button type="button" onclick="deleteTable(2);" class="btn btn-primary">거절</button>
		        </div>
		     </div>
		</div>
	</div>
	<div class = "training_area">
		<div id = "saving">
	     	<textarea id="train_text" placeholder="내용을 입력하세요." rows="10" cols = "150" margin-bottom:4px;"></textarea><p>
	        <p>
	        <input type="radio" name="chk_info" value="yes">유서
			<input type="radio" name="chk_info" value="no">일반글
	        </p>
	        <button type="saving_button" class="btn btn-primary">DB에 저장</button>
		</div>
		<div id = "training">
			<button type="train_button" class="btn btn-primary">트레이닝</button>
		</div>
	</div>
</div>
</body>
</html>