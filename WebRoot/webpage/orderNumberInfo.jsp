<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style type="text/css">
       body{
           margin:0px;
       }
       #userregister{
           text-align:center;
           background-color:green;
       }
       #userregister table{
           margin-left:35%;
           margin-top:15px;
           margin-bottom:15px;
       }
       #userregister table td{
          width:150px;
          height:30px;
          line-height:30px;
       }
       .tdStyle{
           text-align:right;
       }
       .buttonStyle{
           width:100px;
           height:25px;
           line-height:25px;
       }
       .addressTitle{
       		font-size:20px;
       		color:white;
       		font-weight:bold;
       		text-align:left;
       		margin-top:15px;
       }
       .orderTitle{
       		font-size:15px;
       		color:white;
       		font-weight:bold;
       		text-align:center;
       		margin-top:15px;
       }
       .buttons{
       		margin-top:15px;
       		background-color:orange;
       }
   </style>
</head>
<body>
 <div id="userregister">
    <label style="width:200px;color:red;margin-left:-300px;"><s:actionerror/></label>
        <s:form action="userRegister" namespace="/user" method="post" id="registerForm" theme="simple">
        	<div class="addressTitle">我的订单>>订单号</div>
        		<div class="orderTitle">
        			<span style="margin-top:10px;">您的订单号：<s:property value="order.orderScore"/></span><br/>
        			园区配送中心会尽快为您配送，<span style="color:red;">请您备好零钱！</span>
        		</div>
            <hr color="grey;" size=5px/>
            <div style="margin-left:500px">
            	<a href="<%=request.getContextPath()%>/common/index.action" style="border:1px #CCCCCC solid; background-color:#67930A; color:#FFFFFF; padding-top:5px; margin-top:10px;text-decoration: none;color:white;">返回首页</a>
            </div>
             <hr color="grey;" size=5px/>           		
        </s:form>
    </div>
</body>
</html>