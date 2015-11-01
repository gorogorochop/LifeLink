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
         <h2>�ؽ�Ʈ �Է�</h2>
      
         <div id="inputField">
            <textarea id="inputSource" onkeyup="resize(this)"></textarea>
            <a href="#">
               <span id="resultButton">����м�</span>
            </a>
         </div>
         
      </div>
      <div id="resultArea">
         <h2>�ؽ�Ʈ �м� ���</h2>
         
         <div id="rtContainer">
            <span id="resultText"><a href="#"><span class="feature">�װ�ʹٴ�</span></a> <a href="#">������</a> <a href="#">100����</a> <a href="#">�Ѱ�</a> <a href="#">�غý��ϴ�.</a> 
<a href="#"><span class="feature">������</span></a> <a href="#">������</a>
<a href="#"><span class="feature">������</span></a> <a href="#">��������..</a>
�̴�� <span class="feature">�ױ⿣</span> 15��ۿ� �� �� �� <span class="feature">�λ��� �ʹ� �Ʊ�����</span> 
��� �̷��� <span class="feature">��� �ͺ��� ���� ��</span> ���� 
�̴�ζ��.... ���� 8���� ���� <span class="feature">�ڽ��� ����</span> 
���࿡ �� <span class="feature">������ �����ϸ�</span> ����� �Ͻǰſ��� 
���׽ɿ� ������ <span class="feature">�浿�� �ڻ�?</span> 
�ƴϿ�.. 
���� ���� ������ ��ȹ�ؿ� ���Դϴ�. 
<span class="feature">������ ���</span>�ϴ� ������� 
<span class="feature">� �ƹ��� ���� ����</span>�鼭�� 
...���� ���� �׷����ϴ� 
<span class="feature">��ư� ��ġ�� ��������</span> �ֽ��ϴ�</span>
         </div>
         
         <div id="chart8"></div>
         <script>
            var options = {
            		'legend': {
            			names: ['�ڻ����','�ڻ���������','����, �ڻ쿡 ���� ����','� ���� �̷�','�ڻ� ��� ������ ���� ����','�ٸ� ����� ���� ����','�ٸ� ����� ���� ����','�ٸ� ����� ���� ����','�ڽ��� �λ� ����'],
            			hrefs: []
                    },
                    'dataset': {
                    	title: 'Playing time per day',
                    	values: [5,7,1,4,6,3,5,2,10],
                    	colorset: ['#56b4e9'],
                    	fields:['��']
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
            			fields: ['�ڽ��� �λ� ����', '�ڻ���������',  '�ڻ� ��� ������ ���� ����', '�ٸ� ����� ���� ����', '�ڻ����']
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