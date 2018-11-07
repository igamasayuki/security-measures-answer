<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>SQLインジェクション</title>
</head>
<body>
<h3>SQLインジェクションとは</h3>
<h4>概要</h4>
<p>SQLを実行する時に発生する脆弱性です</p>
<h4>どのような時に起こるか？</h4>
<p>SQLに不正な文字列が含まれていた時</p>
<h4>体験してみよう</h4>
<p><a href="${pageContext.request.contextPath}/member/show" target="_blank">SQLインジェクションを体験</a></p>
<h4>回避方法を話し合い、対策してみよう</h4>
<p>グループで回避方法を話し合い(調べてもOK)、実際に対策してみてください。</p>
</body>
</html>