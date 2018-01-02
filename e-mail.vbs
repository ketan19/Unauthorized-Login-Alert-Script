

Dim ObjFso
Dim StrFileName
Dim ObjFile
Dim StrData
 
StrFileName = "c:\Windows\RDP\Log.txt"
Set ObjFso = CreateObject("Scripting.FileSystemObject")
 
'Opening the file in READ mode
Set ObjFile = ObjFso.OpenTextFile(StrFileName)
 

Set objEmail = CreateObject("CDO.Message")

objEmail.From = "senderemail@xyz.com"
objEmail.To = "receiveremail@xyz.com"

objEmail.Subject = "*** Unauthorized LOGIN NOTIFICATION ***" 

objEmail.Textbody = ObjFile.ReadAll
ObjFile.Close


objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = _
        "SMTP server name" 
objEmail.Configuration.Fields.Item _
    ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
objEmail.Configuration.Fields.Update
objEmail.Send