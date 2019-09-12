@echo off
set T_FILENAME="TR_Casino Games (UE) [!].sms"
set S_FILENAME="Casino Games (UE) [!].sms"
set SCRIPTNAME="casinogamessms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
