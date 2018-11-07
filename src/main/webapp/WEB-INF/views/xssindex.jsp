<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>クロスサイトスクリプティング</title>
</head>
<body>
<h3>クロスサイトスクリプティングとは</h3>
<h4>概要</h4>
<p>掲示板などのユーザが入力した内容をそのまま表示させるようなWebページに発生する脆弱性です</p>
<h4>どのような時に起こるか？</h4>
<p>HTMLのタグとして認識される文字列が含まれていた時</p>
<h4>体験してみよう</h4>
<p><a href="${pageContext.request.contextPath}/bbs/show" target="_blank">クロスサイトスクリプティングを体験</a></p>
<h4>回避方法を話し合い、対策してみよう</h4>
<p>グループで回避方法を話し合い(調べてもOK)、実際に対策してみてください。</p>
</body>
</html>