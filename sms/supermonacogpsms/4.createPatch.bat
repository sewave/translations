@echo off
set T_FILENAME="TR_Super Monaco GP (U) [!].sms"
set S_FILENAME="Super Monaco GP (U) [!].sms"
set SCRIPTNAME="supermonacogpsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
