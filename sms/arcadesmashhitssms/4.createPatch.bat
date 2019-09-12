@echo off
set T_FILENAME="TR_Arcade Smash Hits (E) [!].sms"
set S_FILENAME="Arcade Smash Hits (E) [!].sms"
set SCRIPTNAME="arcadesmashhitssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
