<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>user style</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
	    *{
	        margin:0;
	        padding:0;
	    }
	    body{
	        width:1000px;
	        height:auto;
	        font-size:12pt;
	        position:absolute;
	    }
	    #wrap{
	        margin-left:19%;
	    }
	    #header{
	        width:955px;
	        height:79px;
	        position:relative;
	        background-image:url(../page/images/trade.jpg);
	        background-repeat: no-repeat;
	    }
	    #body{
	        width:955px;
	        margin-top:3px;
	    }
	    #footer{
	        width:955px;
	        text-align:center;
	        position:relative;
	        margin-top:3px;
	    }
	</style>
  </head>
  
  <body>
    <div id="wrap">
        <div id="header">
        <tiles:insertAttribute name="payheader"/>
    </div>
    <div id="body">
        <tiles:insertAttribute name="paybody"/>
    </div>
    <div id="footer">
        <tiles:insertAttribute name="payfooter"/>
    </div>
    </div>
</body>
</html>
