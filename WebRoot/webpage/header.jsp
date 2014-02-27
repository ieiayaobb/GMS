<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	#headerStyle1{
		 width:980px;
         height:35px;
         line-height:35px;
         text-align:left;
	}
	#headerStyle1 a{
		color:green;
        text-decoration: none;
        font-weight:bold;
	}
	#headerStyle1 a:hover{
		 color:red;
         text-decoration: underline;
         font-weight:bold;
	}
	#headerStyle2{
		margin-left:700px;
		 width:980px;
         height:35px;
         line-height:35px;
         text-align:center;
	}
	#headerStyle2 a{
		color:green;
        text-decoration: none;
        font-weight:bold;
	}
	#headerStyle1 a:hover{
		 color:red;
         text-decoration: underline;
         font-weight:bold;
	}
	#imgStyle img{
		width:350px;
		height:160px;
	}
	#imgStyle a{
        text-decoration: none;
        font-weight:bold;
        margin-top:50px;
       
	}
	#imgStyle a img{
		width:100px;
		height:30px;
		margin-bottom:-15px;
	}
	#imgStyle span{
		font-size:16px;
		color:white;
		margin-left:-10px;
		margin-top:-4px;
	}
</style>
<script type="text/javascript">
	function userLogin(){
		 var sessionname = '<s:property value="#session.username"/>';
    	   if(sessionname.length!=0){
    		   alert("请不要重复登录");
    	   }else{
    		   window.location.href="<%=request.getContextPath()%>/webpage/userLogin.jsp";
    	   }
	}
	function myCart(){
		var sessionname='<s:property value="#session.username"/>';
    	   if(sessionname.length==0){
    		   if(confirm("您还未登陆，请先登陆")){
    			   window.location.href="<%=request.getContextPath()%>/common/userLogin.action"
    		   }
    	   }else{
    	   		 window.location.href="<%=request.getContextPath()%>/common/myCart.action";
    	   }
	}
</script>
<title>Insert title here</title>
</head>
<body>
<div id="title">
	<span id="headerStyle1"> 
		<s:if test="#session.username != null">
		<font color="red">${sessionScope.username}</font>
		</s:if>欢迎光临我要买菜网！ 
		<a href="<%=request.getContextPath()%>/common/userLogin.action">[登陆]</a>	
		<a href="<%=request.getContextPath()%>/common/userRegist.action" >[注册]</a>
		<a href="<%=request.getContextPath()%>/common/userLogout.action" >[安全退出]</a>
	</span>
	<span id="headerStyle2">
		<a href="javascript:myCart();" ><img src="../webpage/img/buy01.jpg"/>&nbsp;我的定菜</a>	
		<a href="#" >帮助中心</a>
	</span>
	<hr>
</div>
<div id="imgStyle">
	<img src="../webpage/img/u1_normal.jpg"/>
	<img src="../webpage/img/u4_normal.png" style="margin-left:120px;"/>
	<img src="../webpage/img/u11_normal.jpg" style="margin-left:100px;"/>
	<a href="<%=request.getContextPath()%>/common/index.action">
		<img src="../webpage/img/u10_normal_01.png" style="margin-left:450px;"/>
	</a>
	<a href="#">
		<img src="../webpage/img/u10_normal_02.png" style="margin-left:10px;"/>
	</a>
	<a href="#">
		<img src="../webpage/img/u10_normal_03.png" style="margin-left:10px;"/>
	</a>
	<hr color=lightgreen size=7px/>
</div>
</body>
</html>