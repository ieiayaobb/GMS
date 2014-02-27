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
        #content{
            width:100%;
            height:150px;
            line-height:80px;
            margin-left:-10%;
        }
        #content span{
            margin-left:50px;
        }
        .btn{
            height:25px;
            width:80px;
        }
        #content table{
            margin-top:50px;
            margin-left:35%;
        }
        #content table td{
            height:30px;
        }
    </style>
    <script type="text/javascript">
        function addmoneys(){
        	var money = document.getElementById("money").value;
        	if(money.length==0){
        		alert("充值金额必填");
        	}else if(!checkNum(money)){
        		alert("充值金额必须是数字");
        	}else{
        		var form = document.getElementById("addmoney");
        	    form.action = "addAccount.action";
        	    form.submit();
        	}
        }
        function checkNum(str)
       {
            return str.match(/\D/)==null;
       }   
    </script>
  </head>
  <s:actionerror/>
  <s:fielderror></s:fielderror>
  <body style="text-align:center;font-size:10pt;">
  <hr style="width:100%;color:lightgrey;">
       <div id="content">
           <s:if test="bankmoney==null||bankmoney==0">
               <s:form action="" namespace="/common" method="post" id="addmoney" theme="simple">
               <table border="0">
                   <tr><td>账户名称：</td><td><s:property value="%{bank.account}"/></td><td></td><td></td></tr>
                   <tr>
                       <td>账户余额：</td>
                       <td><font color="red"><s:property value="%{bank.money}"/></font></td>
                       <td><s:textfield name="bankmoney" id="money"></s:textfield></td>
                       <td><input type="button" value="充值" onclick="addmoneys()" class="btn"/></td>
                   </tr>
               </table>
           </s:form>
           </s:if>
           <s:else>
               充值成功，您的当前余额：<font color="red"><s:property value="%{bank.money}"/></font>&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/common/jumpToPay.action">前去支付</a>
           </s:else>
       </div>
  </body>
</html>
