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
   
  </head>
  
  <body>
    <div id="wrap">
        <div id="header">
        <tiles:insertAttribute name="header"/>
    </div>
    <div id="body">
        <tiles:insertAttribute name="body"/>
    </div>
    <div id="footer">
        <tiles:insertAttribute name="footer"/>
    </div>
    </div>
</body>
</html>
