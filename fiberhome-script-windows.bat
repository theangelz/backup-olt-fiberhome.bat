@echo off & setlocal enabledelayedexpansion & cls

echo/ & mode con cols=77 lines=30& color 9F

set "_usuario_=GEPON" & set "_senha_=SUASENHA"
set "_cmd_=telnet.exe 0.0.0.0.0 22223"

>"%temp%\_temp_file_4vbs_.vbs"^
    (
     echo/ Set WshShell = WScript.CreateObject^("WScript.Shell"^)
     echo/ Set objShell = WScript.CreateObject^("WScript.Shell"^)
     echo/ StrPwd  = "!_senha_!"
     echo/ StrUser = "!_usuario_!"
     echo/ for i=1 To Len^(StrUser^)
     echo/     x = Mid^(StrUser,i,1^)
     echo/     WshShell.SendKeys x
     echo/     Wscript.Sleep 250
     echo/ Next
     echo/ Wscript.Sleep 500
     echo/ WshShell.SendKeys "({ENTER})"
     echo/ for j=1 To Len^(StrPwd^)
     echo/     x = Mid^(StrPwd,j,1^)
     echo/     WshShell.SendKeys x
     echo/     Wscript.Sleep 200
     echo/ Next 
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "({ENTER})"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "en"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "({ENTER})"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "flexfibra"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "({ENTER})"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "upload ftp config 0.0.0.0.0 olt olt@ babyolt.conf"
     echo/ Wscript.Sleep 200
     echo/ WshShell.SendKeys "({ENTER})"
     ) 

set "_temp_vbs=%temp%\_temp_file_4vbs_.vbs" &  start "" /b !_cmd_!
@"%Windir%\System32\cScript.exe" //nologo "!_temp_vbs!" <nul & del /q /f "!_temp_vbs!" & goto :eof