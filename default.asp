<!-- #include virtual="/inc_folder/inc_variable.asp" -->
<%Session.Timeout=1440%>
<%
    '--- 현재페이지, 방문 카운트 ---
    Dim strThisPage
    strThisPage = "rago.kr"
    strURL = ""
%>
<!-- #include virtual="/inc_folder/inc_count.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>스마트재무설계</title>
	<link href="/css/smart.css" rel="stylesheet" type="text/css">

    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1119726588512865"
     crossorigin="anonymous"></script>
</head>

<body style="text-align:center">

    <iframe src="home.asp" width="1280" height="900" class="iframe"></iframe>

<%
    strSQL = "Select COUNT(No) AS Count FROM Page_Count "
    strSQL = strSQL & " Where W_Date >= '" & Date() - 1 & "' and DATEPART(day, W_Date) = DATEPART(day, '" & Date() & "')"
    strSQL = strSQL & " and Page like '%rago%'"
    objRec.Open strSQL, strConnect, 1, 2, 1
    If Not(objRec.BOF or objRec.EOF) then
        strCountOfDay = objRec("Count")
    End If
    objRec.Close

    strSQL = "Select COUNT(No) AS Count FROM Page_Count "
    strSQL = strSQL & " Where Page like '%rago%'"
    objRec.Open strSQL, strConnect, 1, 2, 1
    If Not(objRec.BOF or objRec.EOF) then
        strTotalCount = objRec("Count")
    End If
    objRec.Close
%>

    <p>본 프로그램은 무료로 사용하실 수 있도록 개방되었습니다. 복제나 재배포는 불가하며 개발과 관련한 문의는 gom102@naver.com 으로 주시면 됩니다.</p>
    <p>금일접속: <%=strCountOfDay%> / 총 접속: <%=strTotalCount%> (2022.07.02 이후)</p>

</body>
</html>
