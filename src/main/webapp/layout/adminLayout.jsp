<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>admin style</title>
    
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
	        margin-left:0%;
	    }
	    #header{
	        width:955px;
	        height:109px;
	        position:relative;
	    }
	    #main{
	        height:602px;
	        position: relative;
	        margin-top:3px;
	    }
	    #adminMenu{
	        width:183px;
	        height:602px;
	        float:left;
	        background-image: url(../webpage/img/customer.jpg);
	    }
	    #body{
	        margin-left:3px;
	        width:769px;;
	        float:left;
	    }
	</style>
  </head>
  
  <body>
    <div id="wrap">
        <div id="header">
            <tiles:insertAttribute name="adminHeader"/>
        </div>
        <div id="main">
            <div id="adminMenu">
                <tiles:insertAttribute name="adminMenu"/>
            </div>
            <div id="body">
                <tiles:insertAttribute name="body"/>
            </div>
        </div>
    </div>
</body>
</html>
