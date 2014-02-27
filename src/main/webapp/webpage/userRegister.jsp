<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
       body{
           margin:0px;
       }
       #userregister{
           text-align:center;
           background-color: orange;
       }
       #userregister table{
           margin-left:25%;
           margin-top:3px;
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
   </style>
   <script type="text/javascript">
       function userRegisters(){
    	   var form = document.getElementById("registerForm");
    	   form.action="<%=request.getContextPath()%>/common/regist.action";
    	   form.submit();
       }
   </script>
  </head>
  
  <body>
    <div id="userregister">
    <label style="width:200px;color:red;margin-left:-300px;"><s:actionerror/></label>
        <s:form action="/regist.action" namespace="/common" method="post" id="registerForm" theme="simple">
            <table border="0">
                <tr><td class="tdStyle">用户名：</td><td><s:textfield name="user.userName"/></td><td></td></tr>
                <tr><td class="tdStyle">密码：</td><td><s:password name="user.passWord"/></td><td></td></tr>
                <tr><td class="tdStyle">性别：</td><td><s:radio list="#{'0':'男','1':'女'}" name="userDetail.sex" value="0"/></td><td></td></tr>
                <tr><td class="tdStyle">真实姓名：</td><td><s:textfield name="userDetail.trueName"/></td><td></td></tr>
                <tr><td class="tdStyle">住址：</td><td><s:textfield name="userDetail.residence"/></td><td></td></tr>
                <tr><td class="tdStyle">QQ号码：</td><td><s:textfield name="userDetail.qq"/></td><td></td></tr>
                <tr>
                    <td class="tdStyle" style="height:50px;"><input type="button" value="注册用户" class="buttonStyle" onclick="userRegisters()"/></td>
                    <td><input type="button" value="信息重置" class="buttonStyle"/></td><td></td>
                </tr>
            </table>
        </s:form>
    </div>
  </body>
</html>
