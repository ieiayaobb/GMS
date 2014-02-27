<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
       #content table{
           margin-top:3px;
           margin-left:12%;
           width:1000px;
       }
       #content table td{
           text-align:center;
       }
       #content table tr td a:hover{
       	   text-decoration: underline;
       	   color:green;
       }
   </style>
	<SCRIPT type="text/javascript">
		function showPhoneDetail(goodsId){
    	   var sessionname = '<s:property value="#session.username"/>';
    	   if(sessionname.length==0){
    		   if(confirm("您还未登陆，请先登陆")){
    			   window.location.href="<%=request.getContextPath()%>/common/userLogin.action"
    		   }
    	   }else{
			alert("添加购物车成功！");
			window.location.href="<%=request.getContextPath()%>/common/addCart.action?goods.goodsId="+goodsId;
		}
		}
	</SCRIPT>
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
                 <tr>
                     <td>
                         <a href="javascript:showPhoneDetail(<s:property value="goods.goodsId"/>)">
                           <img src="../webpage/img/<s:property value="goods.goodsPicture"/>" style="width:180px;height:140px;"/><br>
                           <label style="text-decoration:none;color:green;font-weight:bold;">名称：<s:property value="goods.goodsName"/></label><br>
                           <label style="text-decoration:none;color:green;font-weight:bold;">价格：￥<s:property value="goods.limitPrice"/>元</label><br>
                           <img src="../webpage/img/addCart.gif"/>
                         </a>
                     </td>
                     <td valign="top" style="text-align:center;margin-top:15px;">
                       	  菜品原价：￥<span style="color:red;"><s:property value="goods.originalPrice"/></span>元<br/>
                                                                  适合人数：<label style="color:red;"><s:property value="goods.peopleNumber"/></label>人<br/>
                                                                  惠民价格：￥<label style="color:red;"><s:property value="goods.limitPrice"/></label>元<br/>
                         	重量：<label style="color:red;"><s:property value="goods.desc.weight"/></label>克<br/>
                 	            储存方式：<label style="color:red;"><s:property value="goods.desc.storeMethod"/></label><br/>
                 	            保鲜时间：<label style="color:red;"><s:property value="goods.desc.freshTime"/></label>天<br/>
                     </td>
                 </tr>
         </table>
         </div>
    </div>
</body>
</html>