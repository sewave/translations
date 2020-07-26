@echo off
set T_FILENAME="TR_Penguin Wars (USA).gb"
set S_FILENAME="Penguin Wars (USA).gb"
set SCRIPTNAME="penguinwarsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
