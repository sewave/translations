@echo off
set T_FILENAME="TR_Super Boy II (KR).sms"
set S_FILENAME="Super Boy II (KR).sms"
set SCRIPTNAME="superboyiisms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
