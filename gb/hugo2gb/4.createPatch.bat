@echo off
set T_FILENAME="TR_Hugo 2 (Germany).gb"
set S_FILENAME="Hugo 2 (Germany).gb"
set SCRIPTNAME="hugo2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
