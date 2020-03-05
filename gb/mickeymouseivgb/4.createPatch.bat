@echo off
set T_FILENAME="TR_Mickey Mouse IV (J).gb"
set S_FILENAME="Mickey Mouse IV (J).gb"
set SCRIPTNAME="mickeymouseivgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
