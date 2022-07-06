<%
	Dim mUrl
	Dim thisPageRedirectURL

	Function GetLocationURL() 
	 
		Dim ServerPort,ServerName,ScriptName,QueryString 
		
		ServerName = Request.ServerVariables("SERVER_NAME")
	''	ServerName = "rago.kr"
		ServerPort = Request.ServerVariables("SERVER_PORT") 
		ScriptName = Request.ServerVariables("SCRIPT_NAME") 
		QueryString = Request.ServerVariables("QUERY_STRING") 
		
		mUrl = ServerName
	''	Response.Write mUrl & "(ServerName)<br>"
	''	If ServerPort <> "80" Then 
	''		mUrl = mUrl & ":" & ServerPort 
	''	End If
		If ScriptName <> "/Default.asp" then
			mUrl = mUrl & ScriptName
		End If
		''Response.Write ScriptName & "(ScriptName)<br>"

		If QueryString <>"" Then
			mUrl = mUrl & "?" & Replace(QueryString, "&", "%26")  
		End If
	''	Response.Write QueryString & "(QueryString)<br>"
	''	GetLocationURL = mUrl

		thisPageRedirectURL = "http://" & mUrl
		mUrl = "http://m." & mUrl
	''	GetLocationURL = thisPageRedirectURL
	End Function 

	''Response.Write GetLocationURL()
	GetLocationURL()
%>

<%
    Dim strIP : strIP = Request.ServerVariables("HTTP_X_FORWARDED_FOR") 
    If strIP = "" Then strIP = Request.ServerVariables("REMOTE_ADDR")
    IP = strIP

    strSQL = "Select Top (1) * From IP_Address "
    strSQL = strSQL & " Where First_Ip <= '" & IP & "' and Last_Ip >= '" & IP & "'"
    strSQL = strSQL & " Order by First_Ip Desc, Last_Ip Asc"
    objRec.Open strSQL, strConnect, 1, 2, 1
    If Not(objRec.BOF or objRec.EOF) then
''        strX = objRec("continent_name")
        strY = objRec("country_name")
    End If
    objRec.Close


    strSQL = "INSERT INTO Page_Count      " &_
            "   (Page      "                &_
            "   ,Member_Id                " &_
            "   ,W_Date                   " &_
            "   ,continent_name           " &_
            "   ,country_name             " &_
            "   ,IP)                      " &_
            "VALUES                       " &_
            "   ('" & thisPageRedirectURL & "' " &_
            "   ,'" & Session("Member_Id")  & "'" &_
            "   ,getdate()" &_
            "   ,'" & strX & "'" &_
            "   ,'" & strY & "'" &_
            "   ,'" & IP & "')"
    
    objConn.Open strConnect
    objConn.Execute strSQL
    objConn.close

'	strSQL = "Select * From BlackList Where IP='" & IP & "'"
'	objRec.Open strSQL, strConnect, 1, 2, 1
'	If Not(objRec.BOF or objRec.EOF) then
'		Response.Redirect "http://www.naver.com"
'	End If
'	objRec.Close
%>