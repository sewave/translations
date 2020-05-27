@echo off
set T_FILENAME="TR_Space Harrier (Japan, USA).sms"
set S_FILENAME="Space Harrier (Japan, USA).sms"
set SCRIPTNAME="spaceharriersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
