<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
    .tableStyle{
        margin-top:20px;
        margin-left:30%;
        margin-bottom:10px;
    }
    .tableStyle td{
        width:120px;
        height:35px;
        line-height:35px;
        
    }
    .button{
        width:80px;
        height:30px;
        line-height:30px;
    }
    .errorAndmes{ font-family:Arial, Helvetica, sans-serif; font-size:15px; color:#FF0000; vertical-align:middle; } .errorAndmes ul{ list-style-type:none; margin:0px; padding:3px; vertical-align:middle; } .errorAndmes ul li{ list-style-type:none; }
    </style>
    <script type="text/javascript">
        function loginbank(){
        	var form = document.getElementById("loginbankform");
        	form.action = "loginBank.action";
        	form.submit();
        }
    </script>
  </head>
  
  <body style="text-align:center;font-size:10pt;">
   <hr style="color:lightgrey;margin-bottom:5px;">
    <table border="0">
        <tr><td width="80">您需支付:</td><td width="130"><font color="red" size="4"><b><s:property value="totalPrice"/></b></font></td></tr>
    </table>
    <div style="color:red;" class="errorAndmes"><s:actionerror theme="simple"/></div>
    <s:form action="loginbank" namespace="/common" method="post" id="loginbankform" theme="simple">
        <table class="tableStyle" border="0">
            <tr><td>账户：</td><td><s:textfield name="account"/></td></tr>
            <tr><td>密码：</td><td><s:password name="password"/></td></tr>
            <tr><td></td><td><input type="button" value="登录银行" class="button" onclick="loginbank()"/></td></tr>
        </table>
    </s:form>
  </body>
</html>
