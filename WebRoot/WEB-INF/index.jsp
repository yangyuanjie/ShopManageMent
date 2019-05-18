<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <center>
    <div>
  	<table>
  	<tr>
  		<td>
  		<form action="view/creat" method="post">
  		请选择商品分类:<select name="sortId">
  			<option value="0">全部</option>
  			<option value="1">小电器</option>
  			<option value="2">零食</option>
  			<option value="3">日用百货</option>
  			<option value="3">文具</option>
  			<option value="3">大功率家用电器</option>
  			<option value="3">护肤类</option>
  			</select>
  		<input type="submit" value="查询">
  	</form>
  	
  	</td>
  	</table>
  	
  	
  	
  	</div>
  
    <table border="1">
    		<tr>
    			<th>商品编号</th>
    			<th>商品名称</th>
    			<th>商品分类</th>
    			<th>产地</th>
    			<th>生产日期</th>
    			<th>单价(元)</th>
    			<th>剩余数量</th>
    			<th>是否需要</th>
    		</tr>
    		<c:forEach var="s" items="${list}">
    			<tr>
	    			<th>${s.id}</th>
	    			<th>${s.name}</th>
	    			<th>
	    			<c:if test="${s.sortId==1}">小电器</c:if>
	    			<c:if test="${s.sortId==2}">零售</c:if>
	    			<c:if test="${s.sortId==3}">日用百货</c:if>
	    			<c:if test="${s.sortId==4}">文具</c:if>
	    			<c:if test="${s.sortId==5}">大功率家用电器</c:if>
	    			<c:if test="${s.sortId==6}">护肤类</c:if>
	    			</th>
	    			<th>${s.address}</th>
	    			<th>
	    			<fmt:formatDate pattern="yyyy-MM-dd HH-mm-ss" value="${s.createDate}"/>
	    			</th>
	    			<th>${s.price}</th>
	    			<th>${s.remaining}</th>
	    			<th><a href="add.jsp">点击购买</a></th>
    		    </tr>
    		</c:forEach>
    	</table>
    	</center>
  </body>
</html>
