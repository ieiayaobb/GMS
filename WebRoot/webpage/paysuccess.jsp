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
           您已支付成功！当前余额:<s:property value="%{bank.money}"/><a href="<%=request.getContextPath()%>/common/index.action">返回首页</a>
       </div>
  </body>
</html>
