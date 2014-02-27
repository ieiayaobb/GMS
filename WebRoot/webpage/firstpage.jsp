<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/webpage/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
   var t = n = 0, count;
    $(document).ready(function(){
        count=$("#banner_list a").length;
        $("#banner_list a:not(:first-child)").hide();
        $("#banner_info").html(
                $("#banner_list a:first-child").find("img").attr('alt')
        );
        $("#banner_info").click(
                function(){
                    window.open(
                           $("#banner_list a:first-child").attr('href'), "_blank"
                    );
                });
        $("#banner li").click(function() {
            var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
            n = i;
            if (i >= count)
                return;
            $("#banner_info").html(
                    $("#banner_list a").eq(i).find("img").attr('alt')
            );
            $("#banner_info").unbind().click(

         function(){
                        window.open(
                                $("#banner_list a").eq(i).attr('href'), "_blank");
                    });
            $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            document.getElementById("banner").style.background="";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#banner").hover(
              function(){clearInterval(t)},
                function(){
                    t = setInterval("showAuto()", 4000);
                });
        });
        function showAuto()    {
            n = n >=(count - 1) ? 0 : ++n;
            $("#banner li").eq(n).trigger('click');
        }
        function setTab(name,cursel,n){
 			for(i=1;i<=n;i++){
  			var menu=document.getElementById(name+i);
  			var con=document.getElementById("con_"+name+"_"+i);
  			menu.className=i==cursel?"hover":"";
  			con.style.display=i==cursel?"block":"none";
 		}
}
function userLogins(){
    		   var form = document.getElementById("userLoginForm");
    		   form.action = "<%=request.getContextPath()%>/common/userLoginSuccess.action";
    		   form.submit();
    	   }
</script>
<style type="text/css">
 		#ads{
           width:100%;
           height:300px;
           margin-bottom:3px;
           margin-left:380px;
           margin-top:-320px;
        }
        #ads #menu{
            width:170px;
            height:300px;
            float:left;
            position: relative;
        }
        #ads #pic{
            width:510px;
            height:300px;
            float:left;
            margin-left:2px;
            position: relative;
        }
        #ads #marquee{
            width:267px;
            height:300px;
            border:solid 1px lightgrey;
            float:left;
            margin-left:4px;
            position: relative;
        }
         #banner {
        position:relative;
        width:510px;
        height:300px;
        border:1px solid lightgrey;
        overflow:hidden;
    }
    #banner_list img {
        border:0px;
    }
    #banner_bgs {
        position:absolute;
        bottom:0;
        background-color:#000;
        height:30px;
        filter: Alpha(Opacity=10);
        opacity:0.3;
        z-index:1000;
        cursor:pointer;
        width:478px;
    }
     #banner_info{
        position:absolute;
        bottom:0;
        left:5px;
        height:22px;
        color:#fff;
        z-index:1001;
        cursor:pointer
    }
    #banner ul {
        position:absolute;
        list-style-type:none;
        filter: Alpha(Opacity=80);
        opacity:0.8;
        border:1px solid #fff;
        z-index:1002;
        margin:0; padding:0;
        bottom:3px; right:5px;
    }
    #banner ul li {
        padding:0px 8px;
        float:left;
        display:block;
        color:#FFF;
        border:#e5eaff 1px solid;
        background:#6f4f67;
        cursor:pointer
    }
    #banner ul li.on {
        background:#900
    }
    #banner_list a{
        position:absolute;
    }
    <!--
body{ padding:0;font:15px "楷体";  }
#lib_Tab1_sx{width:300px;margin:0px;padding:0px;margin-bottom:15px; overflow:hidden;margin-left:40px;}
.lib_tabborder_sx{border:2px solid green; background-color:lightcyan}
.lib_Menubox_sx {line-height:28px;position:relative; float:left; width:130px; height:300px;border-right:2px solid green;}
.lib_Menubox_sx ul{margin:0px;padding:0px;list-style:none; position:absolute; top:15px; left:5px; margin-left:10px; height:25px;text-align:center;}
.lib_Menubox_sx li{display:block;cursor:pointer;width:114px;color:#949694;font-weight:bold; margin-bottom:5px;height:25px;line-height:25px; background-color:lemmon}
.lib_Menubox_sx li.hover{padding:0px;background:ligntgreen;width:116px;border:2px solid green; border-right:0;
color:#739242;height:25px;line-height:25px;background-color:lightcyan;}
.lib_Contentbox_sx{margin-top:0px; border-top:none;padding:20px; border-left:0;text-align:center;}
.second{color:green;text-decoration: none;}
.second:hover{color:red; text-decoration: underline;}
-->
#loginStyle{
	text-align:center;
	margin-left:940px;
	margin-top:-300px;
}
.thirdTitle{
	color:green;
	font-weight:bold;
}
.more a{
	color:green;
	font-weight:bold;
	float:right;
	text-decoration: none;
}
.more a:hover{
	color:red;
	text-decoration: underline;
}
#thirdStyle{
	margin-top:30px;
}
.rowStyle table{
	margin-left:350px;
	margin-top:-222px;
}
.rowStyle table tr td{
	border:1px solid lightgray;
	height:240px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div id="index">
    <div id="lib_Tab1_sx" class="lib_tabborder_sx">
	<div class="lib_Menubox_sx ">
	<ul>
   		<li id="one1" onmouseover="setTab('one',1,8)" class="hover">菜品分类</li>
   		<li id="one2" onmouseover="setTab('one',2,8)">新鲜素菜</li>
   		<li id="one3" onmouseover="setTab('one',3,8)">新鲜肉禽</li>   
   		<li id="one4" onmouseover="setTab('one',4,8)">水产海鲜</li>
   		<li id="one5" onmouseover="setTab('one',5,8)">豆制蛋类</li>
   		<li id="one6" onmouseover="setTab('one',6,8)">煲汤类</li>
     	<li id="one7" onmouseover="setTab('one',7,8)">火锅类</li>
      	<li id="one8" onmouseover="setTab('one',8,8)">凉菜</li>
	</ul>
	</div>
 <div class="lib_Contentbox_sx"> 
   <div id="con_one_1" style="display:none">多种菜品<br/>任君选择</div>  
   <div id="con_one_2" >
   		<div ><a href="#" class="second">蔬菜类</a></div>
   		<div ><a href="#" class="second">菌菇类</a></div>
   </div>
   <div id="con_one_3" style="display:none">
		<div ><a href="#" class="second">猪肉类</a></div>
   		<div ><a href="#" class="second">家禽类</a></div>
   		<div ><a href="#" class="second">牛羊肉类</a></div>
	</div>
   <div id="con_one_4" style="display:none">
   		<div ><a href="#" class="second">鱼类</a></div>
   		<div ><a href="#" class="second">虾贝类</a></div>  		
   </div>
   <div id="con_one_5" style="display:none">
   		<div ><a href="#" class="second">豆制品类</a></div>
   		<div ><a href="#" class="second">蛋类</a></div>
   </div> 
   <div id="con_one_6" style="display:none">
   		<div ><a href="#" class="second">汤类</a></div>
   </div>
   <div id="con_one_7" style="display:none">
   		<div ><a href="#" class="second">火锅食材类</a></div>
   </div>
   <div id="con_one_8" style="display:none">
   		<div ><a href="#" class="second">素菜类</a></div>
   		<div ><a href="#" class="second">肉禽类</a></div>
   </div> 
 </div>
</div>
<div id="ads">
        <div id="pic">
            <div id="banner">
            <div id="banner_bg"></div>  
            <div id="banner_info"></div> 
            <ul>
                <li class="on">1</li>
                <li>2</li>
                <li>3</li>
            </ul>
                <div id="banner_list">
                    <a href="#"><img src="../webpage/img/ads_01.jpg" alt="钻石价" width="510" height="300"/></a>
                    <a href="#"><img src="../webpage/img/ads_02.jpg" alt="健康过夏天" width="510" height="300"/></a>
                    <a href="#"><img src="../webpage/img/ads_03.jpg" alt="大白菜" width="510" height="300"/></a>
                </div>
            </div>
     </div>
</div>
<div id="loginStyle">
	<div id="loginTitle" style="background-color:lightgrey;color:white;font-size:18px;width:300px;height:50px;">会员登录</div>
	<div id="formStyle" style="background-color:lightcyan;width:300px;height:250px;">
	<label style="color:red;" class="errorAndmes"><s:actionerror/></label>
	<s:form action="" namespace="/common" id="userLoginForm">
		<s:textfield name="user.userName" label="用户名"/><br/>
		<s:password name="user.passWord" label="密码"/><br/>
		<tr>
			<td><input type="button" value="登陆" id="submitId" onclick="userLogins()"/></td>
			<td><input type="reset" value="重置"/></td>
		</tr>
		<tr>
			<td colspan="2">还没有账号？<a href="<%=request.getContextPath()%>/common/userRegist.action" style="color:green;text-decoration:none;">[立即注册]</a></td>
		</tr>
	</s:form>
	</div>
</div>
<div id="thirdStyle">
	<div class="rowStyle">
		<span class="thirdTitle">新鲜素菜| HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=1">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_01.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList01">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">新鲜肉禽 | HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=3">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_02.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList02">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">水产海鲜 | HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=6">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_03.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList03">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">豆制蛋类 | HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=8">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_04.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList04">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">煲汤类 | HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=10">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_05.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList05">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">火锅类 | HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=11">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_06.jpg" style="margin-left:10px;width:298px;height:222px;curosr:point;" onclick="buyGoods();"/>
		<table>
		<tr>
			<s:iterator value="goodsList06">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
	<div class="rowStyle">
		<span class="thirdTitle">凉菜类| HOT</span>
		<span class="more"><a href="<%=request.getContextPath()%>/common/goodsList.action?categoryCode=12">更多>></a></span>
		<hr color=lightgreen size=7px/>
		<img src="../webpage/img/veg_07.jpg" style="margin-left:10px;"/>
		<table>
		<tr>
		<s:iterator value="goodsList07">
			<td>
			<a href="<%=request.getContextPath()%>/common/singleGoods.action?goodsId=<s:property value='%{goodsId}'/>" style="text-decoration: none;">
			<img src="../webpage/img/<s:property value='%{goodsPicture}'/>" style="margin-left:15px;"/><br/>
			<span style="color:red;">菜品名称：<s:property value="%{goodsName}"/></span><br/>
			<span style="color:red;">惠民价：<s:property value="%{limitPrice}"/>元</span><br/>
			<img src="../webpage/img/addCart.gif"/>
			</a>
			</td>
		</s:iterator>
		</tr>
		</table>
	</div>
</div>
</div>
</body>
</html>