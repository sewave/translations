@echo off
set T_FILENAME="TR_X-Men - Mojo World (Brazil).sms"
set S_FILENAME="X-Men - Mojo World (Brazil).sms"
set SCRIPTNAME="xmenmojoworldsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
