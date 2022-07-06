<% @CODEPAGE="65001" language="vbscript" %>
<%
	'----- DB 접속 ---------
	Dim strConnect
 	Dim strSQL, objRec, objRec1, objRec2, objConn
	Dim ii
	Dim menu_1, menu_2, menu_3

	Dim myCompany
	Dim myImageFolder
	Dim myDBName

	myCompany = "Rago"
	myImageFolder = "Rago"
	myDBName = "Rago"

	strConnect = "Driver={SQL Server}; Server=localhost; DataBase=" & myDBName & "; UID=erpqdbuser; PWD=erpqdb!@#8161"

		
	Set objRec = Server.CreateObject("ADODB.Recordset")
	Set objRec1 = Server.CreateObject("ADODB.Recordset")
	set objRec2 = Server.CreateObject("ADODB.Recordset")
	Set objConn = Server.CreateObject("ADODB.Connection")
%>
<%
function fnInDB(text)           'Input에서 DB로 넣을 때
    dim strText
        strText = text
        strText = replace(strText, "&", "&amp;")
        strText = replace(strText, "<", "&lt;")
        strText = replace(strText, ">", "&gt;")
        strText = replace(strText, "'", "&quot;")
        strText = replace(strText, """", "&Prime;")
        strText = replace(strText, "," , "&sbquo;")
        strText = replace(strText, chr(13) , "<br>")
        strText = replace(strText, "%", " % ")
    fnInDB = strText
end function
 
function fnOutDB(text)          'DB에서 HTML로 표시하기
    dim strText
        strText = text
        strText = replace(strText, "&amp;", "&")
        strText = replace(strText, "&lt;", "<")
        strText = replace(strText, "&gt;", ">")
        strText = replace(strText, "&quot;", "'")
        strText = replace(strText, "&sbquo;", ",")
        strText = replace(strText, chr(13) , "<br>")
        'strText = replace(strText, "&Prime;", """")
        'strText = replace(strText , "<br>", chr(13))
    fnOutDB = strText
end function

Function RemoveHTML( strText )
    Dim contTmp
    set tagfree = New Regexp
    tagfree.Pattern= "<[^>]+>"
    tagfree.Global=true
    strText=tagfree.Replace(strText,"")
    RemoveHTML= strText
End Function
%>