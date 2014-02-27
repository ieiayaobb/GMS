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
        #cart{
            margin-left:20%;
            margin-top:30px;
        }
        #cart table{
            border:solid 1px lightgreen;
            text-align:center;
            margin-top:3px;
        }
        #cart table th{
            width:150px;
            height:25px;
            line-height:25px;
            background-color: lightgreen;
        }
        
        #cart table td{
            width:150px;
            height:25px;
            line-height:25px;
        }
    </style>
    <script type="text/javascript">
        function deleteOrder(ordersid){
        	if(confirm("你确认要从购物车移除该物品吗？")){
        		window.location.href="<%=request.getContextPath()%>/common/deleteOrders.action?orderss.orderid="+ordersid;
        	}
        }
    </script>
  </head>
  
  <body style="text-align:center;font-size:10pt;">
        <div id="cart">
            <table border="0">
            <tr><th>菜品图片</th><th>菜品名称</th><th>菜品价格</th><th>购买时间</th><th>操作</th></tr>
            	<s:iterator value="cartList">
                <tr>
                	<td><img src="../webpage/img/<s:property value='%{goods.goodsPicture}'/>" style="width:120px;height:100px;"/></td>
                    <td><s:property value="%{goods.goodsName}"/></td>
                    <td><s:property value="%{goods.limitPrice}"/></td>                   
                    <td>
                        <s:date format="yyyy-MM-dd" name="%{addTime}"/>
                    </td>
                    <td><input type="button" value="删除" style="width:80px;height:25px;" onclick="deleteOrder('<s:property value="%{orderid}"/>')"/></td>
                </tr>
                </s:iterator>
        </table>
        </div>
        <div id="operate" style="align:right;width:100%;margin-top:5px;margin-left:500px;">
            <label style="margin-right:490px;font-size:20px;color:green;">总价：￥<font color="red" size="6"><b><s:property value="%{totalPrice}"/></b></font></label><br/>
            <label>
                <a href="<%=request.getContextPath()%>/common/confirmInfo.action?order.orderPrice=<s:property value="%{totalPrice}"/>"><img src="../webpage/img/count.gif"/></a>
            </label>
        </div>
  </body>
</html>
