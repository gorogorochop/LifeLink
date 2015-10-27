<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
  <script>
  /*
  function auth(){
		alert("hello");
		//$("#login").slideUp();
	}
  */
  $(document).ready(function(){
	  $(".afterAuth").hide();  
	  $("#auth").click(function(){
		  $("#login").slideToggle();
	  	  $(".afterAuth").slideToggle();
	  	 
	  	  
	  });
	  $("#out").click(function(){
		  $("#login").slideToggle();
	  	  $(".afterAuth").slideToggle();  
	  	 
	  });
	  
	  
  });
  </script>	
	<style>
		#login{
			padding : 10px;
			font-size:200%
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
	</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Life Link ������ ������</title>
 <body>
 <div id = "login">
 	<p>Input Password   
 	<textarea id="subject" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;"></textarea>
 	<button type="button" id="auth" class="btn btn-primary">����</button>
 	</p>
 </div>
 <div id = "logout" class = "afterAuth">
 	<button type="button" id="out" class="btn btn-primary">Logout</button>
 </div>
 <div class = "afterAuth">
	 <div id ="board">
		 <span>
			<table width="100%" cellpadding="0" cellspacing="0" border="0" class="table table-hover">
			  <tr height="5"><td width="5"></td></tr>
			 <tr style="text-align:center;">
			   <td width="73px">��ȣ</td>
			   <td width="173px">����</td>
			   <td width="679px">����</td>
			 </tr>
			 <tr>
			 	<td style="margin: auto;">1</td>
			 	<td>��վ� �װڴ�</td>
			 	<td>��վ� �װڴٶ�� ������ �������� ǥ������ �м��Ǿ����</td>
			 </tr>
			 <tr>
			 	<td>2</td>
			 	<td>�������.</td>
			 	<td>������Ʈ �� �������</td>
			 </tr>
			 <tr>
			 	<td>3</td>
			 	<td>�������.</td>
			 	<td>������Ʈ �� �������</td>
			 </tr>
			  <tr>
			 	<td>4</td>
			 	<td>�������.</td>
			 	<td>������Ʈ �� �������</td>
			 </tr>
			  <tr>
			 	<td>5</td>
			 	<td>�������.</td>
			 	<td>������Ʈ �� �������</td>
			 </tr>
			
			 </table>
			 
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
			  <tr><td colspan="4" height="5"></td></tr>
		
			</table>
		</span>
	</div>	
	<div id="container" style="border:1px solid black;">
	     <div id="inputArea">
	        <div id="inputField">
	        	<textarea id="subject" readonly="readonly" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;">��վ� �װڴ�.</textarea><p>
	           <textarea id="description" readonly="readonly" rows="5" cols = "30">��վ� �װڴٶ�� ������ �������� ǥ������ �м��Ǿ����</textarea><p>
	           <button type="button" onclick="" class="btn btn-primary">����</button>
	           <button type="button" onclick="" class="btn btn-primary">����</button>
	        </div>
	     </div>
	</div>
</div>
</body>
</html>