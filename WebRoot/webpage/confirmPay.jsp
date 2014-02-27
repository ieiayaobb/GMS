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
            height:200px;
            line-height:80px;
            margin-left:-10%;
        }
        #content span{
            margin-left:50px;
        }
        .btn{
            height:30px;
        }
    </style>
    <script type="text/javascript">
        function cancelpay(){
        	window.location.href="<%=request.getContextPath()%>/common/mycart.action";
        }
        function confirmpay(){
        	var total = '<s:property value="totalPrice"/>';
        	var bank = '<s:property value="%{bank.money}"/>';
        	if(parseInt(total)>parseInt(bank)){
        		if(confirm("您的账户余额不足，请充值")){
        			window.location.href="<%=request.getContextPath()%>/common/showAddMoney.action";
        		}
        	}else{
        		window.location.href="<%=request.getContextPath()%>/common/confirmpay.action";
        	}
        }
    </script>
  </head>
  <s:actionerror/>
  <s:fielderror></s:fielderror>
  <body style="text-align:center;font-size:10pt;">
  <hr style="width:100%;color:lightgrey;">
       <div id="content">
           <span>您需支付:<font color="red"><s:property value="totalPrice"/></font></span>
           <span>当前余额：<font color="red"><s:property value="%{bank.money}"/></font></span>
           <span><a href="<%=request.getContextPath()%>/common/showAddMoney.action">充值</a></span><br>
           <label><input type="button" value="确认支付" class="btn" onclick="confirmpay()"/></label>
           <label><input type="button" value="取消支付" class="btn" onclick="cancelpay()"/></label>
       </div> 
       <div id="button">
           
       </div>
  </body>
</html>
