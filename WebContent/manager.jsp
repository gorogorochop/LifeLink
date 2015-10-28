<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
  <script>

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
		#logout{
			padding : 10px;
			
		}	
		#login{
			padding : 10px;
			font-size:200%;
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Life Link ê´€ë¦¬ì í˜ì´ì§€</title>
 <body>
<<<<<<< HEAD
 <div id = "login">
 	<p>Input Password   
 	<textarea id="subject" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;"></textarea>
 	<button type="button" id="auth" class="btn btn-primary">ÀÎÁõ</button>
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
			   <td width="73px">¹øÈ£</td>
			   <td width="173px">Á¦¸ñ</td>
			   <td width="679px">³»¿ë</td>
			 </tr>
			 <tr>
			 	<td style="margin: auto;">1</td>
			 	<td>Àç¹Õ¾î Á×°Ú´Ù</td>
			 	<td>Àç¹Õ¾î Á×°Ú´Ù¶ó´Â ³»¿ëÀÌ ºÎÁ¤ÀûÀÎ Ç¥ÇöÀ¸·Î ºĞ¼®µÇ¾ú¾î¿ä</td>
			 </tr>
			 <tr>
			 	<td>2</td>
			 	<td>22</td>
			 	<td>22222</td>
			 </tr>
			 <tr>
			 	<td>3</td>
			 	<td>33</td>
			 	<td>³»¿ë ¾øÀ½</td>
			 </tr>
			  <tr>
			 	<td>4</td>
			 	<td>44</td>
			 	<td>³»¿ë ¾øÀ½</td>
			 </tr>
			  <tr>
			 	<td>5</td>
			 	<td>55</td>
			 	<td>³»¿ë ¾øÀ½</td>
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
	        	<textarea id="subject" readonly="readonly" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;">Àç¹Õ¾î Á×°Ú´Ù.</textarea><p>
	           <textarea id="description" readonly="readonly" rows="5" cols = "30">Àç¹Õ¾î Á×°Ú´Ù¶ó´Â ³»¿ëÀÌ ºÎÁ¤ÀûÀÎ Ç¥ÇöÀ¸·Î ºĞ¼®µÇ¾ú¾î¿ä</textarea><p>
	           <button type="button" onclick="" class="btn btn-primary">¼ö¶ô</button>
	           <button type="button" onclick="" class="btn btn-primary">°ÅÀı</button>
	        </div>
	     </div>
	</div>
=======
 <div id ="board">
	 <span>
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="table table-hover">
		  <tr height="5"><td width="5"></td></tr>
		 <tr style="text-align:center;">
		   <td width="73px">ë²ˆí˜¸</td>
		   <td width="173px">ì œëª©</td>
		   <td width="679px">ë‚´ìš©</td>
		 </tr>
		 <tr>
		 	<td style="margin: auto;">1</td>
		 	<td>ì¬ë°Œì–´ ì£½ê² ë‹¤</td>
		 	<td>ì¬ë°Œì–´ ì£½ê² ë‹¤ë¼ëŠ” ë‚´ìš©ì´ ë¶€ì •ì ì¸ í‘œí˜„ìœ¼ë¡œ ë¶„ì„ë˜ì—ˆì–´ìš”</td>
		 </tr>
		 <tr>
		 	<td>2</td>
		 	<td>ì¬ë¯¸ì§€ë‹¤.</td>
		 	<td>í”„ë¡œì íŠ¸ ì°¸ ì¬ë¯¸ì§€ë‹¤</td>
		 </tr>
		 <tr>
		 	<td>3</td>
		 	<td>ì¬ë¯¸ì§€ë‹¤.</td>
		 	<td>í”„ë¡œì íŠ¸ ì°¸ ì¬ë¯¸ì§€ë‹¤</td>
		 </tr>
		  <tr>
		 	<td>4</td>
		 	<td>ì¬ë¯¸ì§€ë‹¤.</td>
		 	<td>í”„ë¡œì íŠ¸ ì°¸ ì¬ë¯¸ì§€ë‹¤</td>
		 </tr>
		  <tr>
		 	<td>5</td>
		 	<td>ì¬ë¯¸ì§€ë‹¤.</td>
		 	<td>í”„ë¡œì íŠ¸ ì°¸ ì¬ë¯¸ì§€ë‹¤</td>
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
        	<textarea id="subject" readonly="readonly" rows="1" cols = "32" style="overflow:hidden; margin-bottom:4px;">ì¬ë°Œì–´ ì£½ê² ë‹¤.</textarea><p>
           <textarea id="description" readonly="readonly" rows="5" cols = "30">ì¬ë°Œì–´ ì£½ê² ë‹¤ë¼ëŠ” ë‚´ìš©ì´ ë¶€ì •ì ì¸ í‘œí˜„ìœ¼ë¡œ ë¶„ì„ë˜ì—ˆì–´ìš”</textarea><p>
           <button type="button" onclick="" class="btn btn-primary">ìˆ˜ë½</button>
           <button type="button" onclick="" class="btn btn-primary">ê±°ì ˆ</button>
        </div>
     </div>
>>>>>>> refs/remotes/supermoony/master
</div>
</body>
</html>