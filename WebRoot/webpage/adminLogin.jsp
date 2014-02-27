<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<style type="text/css">
    #login{
    	margin-top:30px;
    	margin-left:14%;
    	width:1003px;
    	height:780px;
        background-image:url(../webpage/img/admin_login.jpg);
        position:absolute;
    }
    #title{
        margin-top:100px;
        margin-left:45%;
        color:white;
        font-weight: bold;
        font-size:30px;
    }
    #content{
        margin-top:140px;
        margin-left:35%;
    }
    td{
        height:33px;
    }
    .tdStyle{
        text-align:right;
        width:110px;
        color:blue;
    }
    .tdErr{
        color:red;
        text-align:center;
        font-weight: bold;
    }
    #content .button{
    	margin-left:35%;
        width:111px;
        margin-top:15px;
        height:31px;
        line-height:31px;
        text-align:center;
    }
    a{
        text-decoration: none;
        color:white;
    }
</style>
<script type="text/javascript">
    function adminLogins(){
    	var form = document.getElementById("adminLogin");
    	form.action = "<%=request.getContextPath()%>/admin/adminLogin.action";
    	form.submit();
    }
</script>
  <body>
     <div id="wrap">
         <div id="login">
         <div id="title">管理员登陆</div>
         <div id="content">
             <s:form action="/adminLogin" namespace="/admin" method="post" id="adminLogin" theme="simple">
                 <table border="0">
                     <tr><td colspan="2" class="tdErr"><s:property value="errorMessage"/></td></tr>
                     <tr><td class="tdStyle">用户名：</td><td><s:textfield name="user.userName" id="username"/></td></tr>
                     <tr><td class="tdStyle">密码：</td><td><s:password name="user.passWord" id="password"/></td></tr>
                     <tr>
                         <td class="tdStyle">
                             <div class="button">
                                 <a href="javascript:adminLogins()">
                                 	<img src="../webpage/img/admin_login_01.png"/>
                                 </a>
                             </div>
                         </td>
                         <td>
                             <div class="button">
                                 <a href="javascript:resetValue()">
                                 	<img  src="../webpage/img/admin_login_02.png">
                                 </a>
                            </div>
                         </td>
                     </tr>
                 </table>
             </s:form>
         </div>
     </div>
     </div>
  </body>

