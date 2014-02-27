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
           background-color: lightgreen;
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
       .buttons{
       		margin-top:15px;
       		background-color:orange;
       }
   </style>
   <SCRIPT type="text/javascript">
   		function submitInfo(){
   			var form = document.getElementById("registerForm");
    		form.action = "<%=request.getContextPath()%>/common/orderAddress.action";
    		form.submit();
   		}
   		function orderNumber(orderScore){
   			if(orderScore.length==0){
   				alert("请您先输入配送地址和电话！");
   			}else{
   				window.location.href="<%=request.getContextPath()%>/common/orderNumberInfo.action?order.orderScore="+orderScore;
   			}   			
   		}
   </SCRIPT>
</head>
<body>
	 <div id="userregister">
    <label style="width:200px;color:red;margin-left:-300px;"><s:actionerror/></label>
        <s:form action="orderAddress" namespace="/common" method="post" id="registerForm" theme="simple">
        	<div class="addressTitle">我的订单>>配送地址</div>
        	<s:hidden name="order.orderPrice" value="%{order.orderPrice}"/>
        	<font color="green"><s:actionmessage/></font>
            <table border="0">
                <tr><td class="tdStyle">配送地址：</td><td><s:textfield name="address.userAddress"/></td><td></td></tr>
                <tr><td class="tdStyle">联系电话：</td><td><s:textfield name="address.userPhoneNumber"/></td><td></td></tr>
                <tr><td class="tdStyle"><input type="button" value="确认地址" class="buttons" onclick="submitInfo();"/></td><td><input type="reset" value="重置" class="buttons"/></td></tr>
            </table>
            <hr color="grey;" size=5px/>
            <div style="margin-left:500px">
            	<a href="javascript:orderNumber('<s:property value="%{order.orderScore}"/>')"><img src="../webpage/img/count.gif"></a>
            </div>
             <hr color="grey;" size=5px/>           		
        </s:form>
    </div>
</body>
</html>