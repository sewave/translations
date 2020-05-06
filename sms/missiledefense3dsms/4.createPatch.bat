@echo off
set T_FILENAME="TR_Missile Defense 3-D (UEB) [!].sms"
set S_FILENAME="Missile Defense 3-D (UEB) [!].sms"
set SCRIPTNAME="missiledefense3dsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
