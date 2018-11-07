<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>メンバー検索</title>
</head>
<body>
<h3>SQLインジェクションの確認</h3>
<p>内容に<br>
「伊賀」(正常検索)<br>
「郎」(正常検索)<br>
「%' --」(SQLインジェクションの脆弱性を突く検索)<br>
と入力し投稿ボタンを押してください。</p>

<form action="${pageContext.request.contextPath}/member/search" method="post">
	検索したい人の名前<br>
	<input type="text" name="name">
	<input type="submit" value="検索">
</form>
<hr>
<table border="1">
<tr>
	<th>名前</th>
	<th>メール</th>
	<th>権限</th>
</tr>
<c:forEach var="member" items="${members}">
	<tr>
		<td>
			<c:out value="${member.name}"/>
		</td>
		<td>
			<c:out value="${member.mailAddress}"/>
		</td>
		<td>
			<c:out value="${member.roleName}"/>
		</td>
	</tr>
</c:forEach>
</table>
</body>
</html>