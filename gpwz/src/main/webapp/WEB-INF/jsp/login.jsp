<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/index.css" type="text/css" rel="stylesheet" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ophirlin's Home</title>
</head>

<body>
<div align="center"> </div>
<body>
	<div style="display:inline">
			<div style="float:left">
			<table>
				<!-- 左侧的登陆页面 -->
				<tr>
					<td class="login_td"> USERNAME OR EMAIL</td>
				</tr>
				<tr>
					<td class="login_td">
					<input type="text" name="UserName" id="login_name" class="input_user" /></td>
				</tr>
				<tr>
					<td class="login_td">PASSWORD</td>
				</tr>
				<tr>
					<td class="login_td">
					<input type="password" name="UserPassword" id="login_pass" class="input_user"/></td>
				</tr>
				<tr>
					<td>
					<div> <input type="button" id="remember_pass" />
					&nbsp;&nbsp;<a href="forget_password.jsp">忘记密码?</a>
					</div>
					</td>
				</tr>
				<tr>
					<td >
					<input type="button" class="button_login" id="button_login" name="login" value="log in" />
					&nbsp; &nbsp;
					<input type="button" name="register" id="button_register" class="button_register" value="sign up" />
					</td>					
				</tr>
				<!-- 右侧的的登陆方式 -->
				</table>
			</div>	
			<div style="float:left">
				<input type="text" class="centerline"/>
			</div>
			<div style="float:left" class="rightdiv" >
			<table width="100px">
				<tr>
					<td>
					<input type="button" class="button_by" width="200px" name="qqlogin" value="QQ登陆"/>
					</td>
				</tr>
				<tr>
					<td>
					<input type="button" class="button_by" width="200px" name="wechatlogin" value="微信登陆"/>
					</td>
				</tr>
				<tr>
					<td>
					<input type="button" class="button_by" width="100px" name="weibologin" value="微博登陆"/>
					</td>					
				</tr>
			</table>
			</div>
		</div>
</body>
</html>