@echo off
set T_FILENAME="TR_Alfred Chicken (USA).gb"
set S_FILENAME="Alfred Chicken (USA).gb"
set SCRIPTNAME="alfredchickengb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
