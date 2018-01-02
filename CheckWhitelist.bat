/min



IF "%username%"=="serviceaccount" (echo "<LOGON DATE :>___%date%--<WORKSTATION :>___%clientname%--<LOGON TIME :>___%time%--<SERVER NAME :>___%computername%--<USER NAME:>___%username%") >>c:\Windows\RDP\Log.csv
IF "%username%"=="serviceaccount" (
IF not "%clientname%"=="MachineName1-W7" (
IF not "%clientname%"=="MachineName2-W7N" (
IF not "%clientname%"=="MachineName3-W7" (
IF not "%clientname%"=="MachineName4-W7" (
IF not "%clientname%"=="MachineName5-W7" (
IF not "%clientname%"=="MachineName6-W7" (
IF not "%clientname%"=="MachineName7-W7" (
IF not "%clientname%"=="MachineName8-W7" (

del c:\Windows\RDP\Log.txt

echo LOGON DETAIL------------------------->>c:\Windows\RDP\Log.txt
echo Workstation_:___%clientname% >>c:\Windows\RDP\Log.txt
echo Server Name_:___%computername% >>c:\Windows\RDP\.txt
echo User Name___:___%username%>>c:\Windows\RDP\Log.txt
echo Logon Date__:___%date% >>c:\Windows\RDP\Log.txt
echo Logon Time__:___%time% >>c:\Windows\RDP\Log.txt

(cscript.exe c:\Windows\RDP\e-mail.vbs)

)))))))))))

)

  




