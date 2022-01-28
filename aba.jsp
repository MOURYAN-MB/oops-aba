<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<html>
<head><title>Result</title></head>
<style>
body{
	background:url('https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg');
	background-repeat:no-repeat;
	background-size:100% 100%;
	height:500px;
	padding-top:500px;
	
}
.content{
background-color:white;
text-align:center;
font-size:50px;}
.content input{
	height:50px;
	width:200px;
	font-size:30px;
	
}
form{
font-size:50px;
}
</style>

<body>
<%!
   int n;
   String str;

   int fibo(int n) {
      if(n<2)
         return n;
      else
         return fibo(n-1) + fibo(n-2);
   }
%>
<div class="content">
<b>Fibonacci series: </b><br>
<% 
   str = request.getParameter("val");
   n = Integer.parseInt(str);

   for(int i=0; i<=n; i++) {
      out.print(fibo(i) + " ");
   }
%></div>
</body>
</html>
