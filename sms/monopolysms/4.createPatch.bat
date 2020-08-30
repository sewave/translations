@echo off
set T_FILENAME="TR_Monopoly (U) [!].sms"
set S_FILENAME="Monopoly (U) [!].sms"
set SCRIPTNAME="monopolysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
