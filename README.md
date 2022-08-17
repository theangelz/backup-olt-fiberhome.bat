# backup-olt-fiberhome.bat
Script Criado pra Facilitar Backup Olt Fiberhome .bat Execultavel Windows.

# **** ATIVE RECURSOS TELNET NO WINDOWS****

Altere campos abaixos.


set "_usuario_=GEPON" & set "_senha_=SUASENHA"

set "_cmd_=telnet.exe 0.0.0.0.0 22223"

echo/ WshShell.SendKeys "SENHA ENABLE"

echo/ WshShell.SendKeys "upload ftp config 0.0.0.0.0 olt olt@ babyolt.conf"
