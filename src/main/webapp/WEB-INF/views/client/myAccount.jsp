﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>飞毛腿外卖</title>
	<link rel="stylesheet" href="/css/main.css" type="text/css" />
	<script type="text/javascript">
	//退出确认框
	function confirm_logout() {   
	    var msg = "您确定要退出登录吗？";   
	    if (confirm(msg)==true){   
	    	location.href="/user/logout"
	    }else{   
	    return false;   
	    }   
	} 
	</script>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<img src="/images/biao.jpg" width="1518" height="60">
	<jsp:include page="menu_search.jsp" />
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td width="25%">
					<table width="100%" border="0" cellspacing="0" style="margin-top:30px">
						<tr>
							<td class="listtitle">个人中心</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="/images/icon1.png" width="15" height="10" />
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="/client/page/modifyUserInfo">用户信息修改</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="/images/icon2.png" width="15" height="10" />
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="/order/queryOrderByUser">订单查询</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="/images/icon3.png" width="15" height="10" />
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="/user/logout" onclick="javascript:return confirm_logout()">用户退出</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<div style="text-align:right; margin:5px 10px 5px 0px">
						<a href="/client/index">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;
						个人中心&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;欢迎
					</div>
					<table cellspacing="0" class="infocontent">
						<tr>
							<td style="padding:20px"><p>
								<img src="/images/you.jpg" width="631" height="436" />
								</p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
