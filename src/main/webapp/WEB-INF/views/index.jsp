<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>セキュリティ対策システム</title>
</head>
<body>
<h1>セキュリティ脆弱性体験サイト</h1>
<ul>
	<li><a href="${pageContext.request.contextPath}/sqlinjection">SQLインジェクションを体験</a></li>
	<li><a href="${pageContext.request.contextPath}/toxssindex">クロスサイトスクリプティングを体験</a></li>
	<li><a href="${pageContext.request.contextPath}/toxsrfindex">クロスサイトリクエストフォージェリを体験</a></li>
</ul>
</body>
</html>