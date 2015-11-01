<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <title>Life Link</title>
   
   <style type="text/css">
      h2 {
         margin: 0; padding:20px;
         border: 1px solid #000;
         background-color:#f9f9f9;
         border-width:1px 0;font-family:Tahoma;}
   </style>
   
   <script type="text/javascript" src='./Nwagon/Nwagon.js'></script>
   <script type="text/javascript" src="index.js"></script>
   <link rel='stylesheet' href='./Nwagon/Nwagon.css' type='text/css'>
   <link rel='stylesheet' href='index.css' type='text/css'>
</head>

<body>
   <div id="container">
      <div id="inputArea">
         <h2>텍스트 입력</h2>
      
         <div id="inputField">
            <textarea id="inputSource" onkeyup="resize(this)"></textarea>
            <a href="#">
               <span id="resultButton">결과분석</span>
            </a>
         </div>
         
      </div>
      <div id="resultArea">
         <h2>텍스트 분석 결과</h2>
         
         <div id="rtContainer">
            <span id="resultText"><a href="#"><span class="feature">죽고싶다는</span></a> <a href="#">생각은</a> <a href="#">100번도</a> <a href="#">넘게</a> <a href="#">해봤습니다.</a> 
<a href="#"><span class="feature">죽으면</span></a> <a href="#">끝날까</a>
<a href="#"><span class="feature">죽으면</span></a> <a href="#">편해질까..</a>
이대로 <span class="feature">죽기엔</span> 15년밖에 못 산 내 <span class="feature">인생이 너무 아깝지만</span> 
계속 이렇게 <span class="feature">사는 것보단 나을 것</span> 같다 
이대로라면.... 남은 8년이 정말 <span class="feature">자신이 없다</span> 
만약에 이 <span class="feature">죽음에 성공하면</span> 뭐라고 하실거예요 
반항심에 저지른 <span class="feature">충동적 자살?</span> 
아니요.. 
아주 오래 전부터 계획해온 일입니다. 
<span class="feature">죽음을 결심</span>하는 사람들은 
<span class="feature">삶에 아무런 낙이 없다</span>면서요 
...지금 저도 그렇습니다 
<span class="feature">살아갈 가치를 못느끼고</span> 있습니다</span>
         </div>
         
         <div id="chart8"></div>
         <script>
            var options = {
            		'legend': {
            			names: ['자살고지','자살이유설명','죽음, 자살에 대한 생각','삶에 대한 미련','자살 결심 과정에 대한 설명','다른 사람에 대한 원망','다른 사람에 대한 저주','다른 사람에 대한 염려','자신의 인생 정리'],
            			hrefs: []
                    },
                    'dataset': {
                    	title: 'Playing time per day',
                    	values: [5,7,1,4,6,3,5,2,10],
                    	colorset: ['#56b4e9'],
                    	fields:['빈도']
                    },
                    'chartDiv': 'chart8',
                    'chartType': 'column',
                    'chartSize': { width: 700, height: 300 },
                    'maxValue': 10,
                    'increment': 1
            };
            Nwagon.chart(options);
         </script>
         
         <div id="chart"></div>
         <script>
            var options = {
            		'dataset': {
            			title: 'Web accessibility status',
            			values:[10, 7, 6, 5, 5],
            			colorset: ['#56b4e9', '#e69f00', '#cc79a7', '#009e73', '#0072b2'],
            			fields: ['자신의 인생 정리', '자살이유설명',  '자살 결심 과정에 대한 설명', '다른 사람에 대한 저주', '자살고지']
                    },
                    'donut_width' : 100,
                    'core_circle_radius': 0,
                    'chartDiv': 'chart',
                    'chartType': 'pie',
                    'chartSize': {width:600, height:300}
            };
            Nwagon.chart(options);
         </script>
      </div>
   </div>
</body>
</html>