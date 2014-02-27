<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Genious Web</title>
<link href="../webpage/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
       .tdStyle{
           text-align:right;
           color:grey;
       }
       #addPhone{
           width:100%;
           margin-left:50px;
       }
       #addPhone table{
           margin-top:-10px;
           text-align:center;
       }
       
       #addPhone table td{
           width:120px;
           height:35px;
       }
       .btn{
     width:89px;
     height:28px;
     background-image: url(../webpage/img/more.gif);
     line-height:28px;
     text-align:center;
 }
   </style>
   <script type="text/javascript">
       function addGoods(){
       		alert("添加成功！");
    	   var form = document.getElementById("comfirm");
    	   form.action = "<%=request.getContextPath()%>/admin/addGoods.action";
    	   form.submit();
       }
       
      function updateGoods(){
       		alert("修改成功！");
    	   var form = document.getElementById("comfirm");
    	   form.action = "<%=request.getContextPath()%>/admin/updateGoods.action";
    	   form.submit();
       }
       
</script>
</head>

<body>
<div id="topPan">
	<span style="font-size:20px;margin-right:30px;margin-top:140px;">社区蔬菜、食品网后台管理</span>
	<ul>
		<li><a href="../webpage/adminIndex.jsp">欢迎您</a></li>
		<li class="home"><a href="<%=request.getContextPath()%>/admin/managerInfo.action">管理中心</a></li>
		<li><a href="#">管理员管理</a></li>
		<li><a href="../webpage/adminLogin.jsp">安全退出</a></li>
	</ul>
	<ul>
	    <li style="width:300px;margin-top:50px;margin-left:-260px;"><font size="4" color="darkblue">管理中心&gt;&gt;添加商品</font></li>
	</ul>
</div>
<div id="bodytopmainPan">
<div id="bodytopPan">
	<div id="addPhone">
	    <font color="green"><s:actionmessage/></font>
	    <s:form action="/addGoods.action" namespace="/admin" method="post" id="comfirm" theme="simple" enctype="multipart/form-data">
           <table border="0">
               <tr><td class="tdStyle">菜品名称：</td><td><s:textfield name="goods.goodsName"></s:textfield></td><td></td></tr>
               <tr>
                   <td class="tdStyle">菜品分类：</td>
                   <td style="text-align:left;"><s:select name="goods.categoryCode" list="#{'1':'蔬菜类','2':'菌菇类','3':'猪肉类','4':'家禽类','5':'牛羊肉类','6':'鱼类','7':'虾类','8':'豆制品类','9':'蛋类','10':'汤类','11':'火锅食材类','12':'素菜类','13':'肉禽类'}"/></td>
                   <td></td>
              </tr>
              <tr><td class="tdStyle">适用人数：</td><td><s:textfield name="goods.peopleNumber"/></td><td>人</td></tr>
              <tr><td class="tdStyle">原始价格：</td><td><s:textfield name="goods.originalPrice"></s:textfield></td><td>元</td></tr>
              <tr><td class="tdStyle">现价：</td><td><s:textfield name="goods.limitPrice"></s:textfield></td><td>元</td></tr>
              <tr><td class="tdStyle">重量：</td><td><s:textfield name="desc.weight"></s:textfield></td><td>克</td></tr>
              <tr><td class="tdStyle">储藏方法：</td><td><s:textfield name="desc.storeMethod"></s:textfield></td><td></td></tr>
              <tr><td class="tdStyle">保鲜期：</td><td><s:textfield name="desc.freshTime"></s:textfield></td><td>天</td></tr>
              <tr><td class="tdStyle">图片：</td><td><s:file name="goods.goodsPicture" value="/webpage/img/veg_01_01.jpg"/></td><td></td></tr>
              <tr>
                  <td class="tdStyle"></td>
                  <td style="text-align:left;height:50px;">
                  	<s:if test="goodsId.length==0">
                      <div class="btn">
                          <a href="javascript:addGoods()">添加蔬菜</a>
                      </div>
                    </s:if>
                    <s:else>
                      <div class="btn">
                          <a href="javascript:updateGoods()">修改信息</a>
                      </div>
                    </s:else>
                  </td>
                  <td></td>
              </tr>
           </table>
        </s:form>
	</div>
</div>
</div>
</body>
</html>
