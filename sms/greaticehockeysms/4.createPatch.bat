@echo off
set T_FILENAME="TR_Great Ice Hockey (UJ) [!].sms"
set S_FILENAME="Great Ice Hockey (UJ) [!].sms"
set SCRIPTNAME="greaticehockeysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
