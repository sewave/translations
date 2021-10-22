@echo off
set T_FILENAME="TR_Sumo Fighter (USA).gb"
set S_FILENAME="Sumo Fighter (USA).gb"
set SCRIPTNAME="sumofightergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
