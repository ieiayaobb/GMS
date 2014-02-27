<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="codeType" uri="/codetype"%>

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
       #content table{
           margin-top:3px;
       }
       #content table td{
           text-align:center;
       }
   </style>
   <script type="text/javascript">
       function showPhoneDetail(phoneid){
        	window.location.href="<%=request.getContextPath()%>/common/getPhoneDetail.action?phoneid="+phoneid;
        }
   </script>
  </head>
  
  <body>
    <div id="userLogin">
        <div id="listtitle" style="text-align:left;">
            <s:form action="findPhoneList" namespace="/common" method="post" id="searchForm" theme="simple">
            <label style="margin-left:20px;">菜品名称：</label><s:textfield name="goods.goodsName"/><input type="submit" value="搜索" style="width:80px;font-size:14px;"/>
            </s:form>
         </div>
         <hr style="color:grey;margin-top:3px;">
         <div id="content">
         <table border="0" style="border:solid 1px lightgrey;" rules="rows">
             <s:iterator value="phoneList">
                 <tr>
                     <td>
                         <a href="javascript:showPhoneDetail('<s:property value="phoneid"/>')">
                           <img src="../pictures/<s:property value="picture"/>" style="width:180px;height:140px;"/><br>
                           <label>名称：</label><s:property value="phonename"/><br>
                           <label>价格：</label><s:property value="price"/><br>
                           <img src="../page/images/buy.gif"/>
                         </a>
                     </td>
                     <td valign="top" style="text-align:left;">
                         <label style="color:red;"><s:property value="phonename"/></label>是一款性能好，价格低的好手机，如今只需要花
                         <label style="color:red;"><s:property value="price"/></label>元，你就能得到它，仓库只剩库存
                         <label style="color:red;"><s:property value="amount"/></label>件，还等什么，赶快行动吧。
                     </td>
                 </tr>
             </s:iterator>
         </table>
         </div>
    </div>
  </body>
</html>
