<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="codeType" uri="/codetype"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/page/js/jquery-1.9.1.min.js"></script> 
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
        #ads{
            width:100%;
            height:300px;
            margin-bottom:3px;
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
        #phones{
            margin-top:3px;
            width:100%;
            height:650px;
            text-align:left;
        }
        #menu table{
            border:solid 2px green;
        }
        #menu table td{
            width:170px;
            text-align:center;
            height:30px;
            line-height:30px;
        }
        #menu table td a{
            color:grey;
            text-decoration: none;
        }
        #menu table td a:hover{
            color:red;
            text-decoration: underline;
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
    .tableStyle{
        margin-top:3px;
        text-align:center;
        font-size:10pt;
    }
    .tableStyle a{
        color:blue;
        text-decoration: none;
    }
    .tableStyle a:hover{
        color:red;
        text-decoration: underline;
    }
    .tableStyle td{
        height:300px;
        border:solid 1px lightgrey;
    }
    </style>
  </head>
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
        </script>
  <body>
    <div id="index">
        <div id="ads">
            <div id="menu">
                <table border="0" cellpadding="1" rules="rows">                   
                        <tr><td><a href="javascript:searchPhone('<s:property value="codeId"/>')"><s:property value="codeDesc"/></a></td></tr>
                </table>
            </div>
            <div id="pic">
                <div id="banner">
            <div id="banner_bg"></div>  
            <div id="banner_info"></div> 
            <ul>
                <li class="on">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
            </ul>
                <div id="banner_list">
                    <a href="#"><img src="../page/images/1.jpg" alt="诺基亚手机" width="510" height="300"/></a>
                    <a href="#"><img src="../page/images/2.jpg" alt="三星手机" width="510" height="300"/></a>
                    <a href="#"><img src="../page/images/3.jpg" alt="黑莓手机" width="510" height="300"/></a>
                    <a href="#"><img src="../page/images/4.jpg" alt="HTC中兴手机" width="510" height="300"/></a>
                </div>
            </div>
            </div>
            <div id="marquee"></div>
        </div>
        <div id="phones">
            <span style="margin-left:0px;font-size:20px;color:grey;font-weight:bold;">最新物品展示</span>
            <hr>
            <table border="0" class="tableStyle">
              <tr>
                <s:iterator value="phoneList" status="index">
                    <s:if test="#index.index>=0&&#index.index<5">
                    
                        <td>
                        <a href="javascript:showPhoneDetail('<s:property value="phoneid"/>')">
                           <img src="../pictures/<s:property value="picture"/>" style="width:180px;height:140px;"/><br>
                           <label>名称：</label><s:property value="phonename"/><br>
                           <label>价格：</label><s:property value="price"/><br>
                           <img src="../page/images/buy.gif"/>
                        </a>
                        </td>
                    
                    </s:if>
                </s:iterator>
              </tr>
              <tr>
                    <s:if test="#index.index>=5&&#index.index<10">
                    
                        <td>
                        <a href="javascript:showPhoneDetail('<s:property value="phoneid"/>')">
                           <img src="../pictures/<s:property value="picture"/>" style="width:180px;height:140px;"/><br>
                           <label>名称：</label><s:property value="phonename"/><br>
                           <label>价格：</label><s:property value="price"/><br>
                           <img src="../page/images/buy.gif"/>
                        </a>
                        </td>
                    
                    </s:if>
              </tr>
            </table>
        </div>
    </div>
  </body>
</html>
