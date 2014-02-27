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
       #userLogin .buttonss{
           width:80px;
           height:25px;
           line-height:25px;
       }
       #userLogin{
           width:100%;
           height:150px;
           background-color: orange;
       }
       .tdStyle{
           text-align:right;
       }
       #userLogin table td{
           width:130px;
           height:35px;
       }
       #userLogin table{
           margin-left:30%;
       }
       .errorAndmes{ font-family:Arial, Helvetica, sans-serif; font-size:15px; color:#FF0000; vertical-align:middle; } .errorAndmes ul{ list-style-type:none; margin:0px; padding:3px; vertical-align:middle; } .errorAndmes ul li{ list-style-type:none; }
   </style>
   <script type="text/javascript">
    	   function userLogins(){
    		   var form = document.getElementById("userLoginForm");
    		   form.action = "<%=request.getContextPath()%>/common/userLoginSuccess.action";
    		   form.submit();
    	   }
   </script>
  </head>
  
  <body>
    <div id="userLogin">
        <label style="color:red;" class="errorAndmes"><s:actionerror/></label>
        <s:form action="" namespace="/common" method="post" id="userLoginForm" theme="simple">
            <table border="0">
                <tr><td class="tdStyle">用户名：</td><td><s:textfield name="user.userName"/></td></tr>
                <tr><td class="tdStyle">密码：</td><td><s:password name="user.passWord"/></td></tr>
                <tr><td class="tdStyle"><input type="button" value="登陆" class="buttonss" onclick="userLogins()"/></td><td><input type="button" value="重置" class="buttonss"/></td></tr>
            </table>
        </s:form>
    </div>
  </body>
</html>
