<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>クロスサイトリクエストフォージェリ</title>
</head>
<body>
<h3>クロスサイトリクエストフォージェリとは</h3>
<h4>概要</h4>
<p>
外部サイト経由でユーザが意図しないリクエストがサーバーに送信されてしまう脆弱性です。<br>
この脆弱性があると、掲示板に意図しない書き込みをさせられたり、
オンラインショップで買い物をさせられたりしてしまいます。
</p>
<h4>どのような時に起こるか？</h4>
<p>外部サイトから意図しないリクエストを送られた時</p>
<h4>体験してみよう</h4>
<p><a href="${pageContext.request.contextPath}/bbs/show" target="_blank">クロスサイトリクエストフォージェリを体験</a></p>
<h4>回避方法を話し合い、対策してみよう</h4>
<p>グループで回避方法を話し合い(調べてもOK)、実際に対策してみてください。</p>
</body>
</html>