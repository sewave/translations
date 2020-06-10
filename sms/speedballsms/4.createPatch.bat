@echo off
set T_FILENAME="TR_Speedball (E) (Virgin) [!].sms"
set S_FILENAME="Speedball (E) (Virgin) [!].sms"
set SCRIPTNAME="speedballsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
