@echo off
set T_FILENAME="TR_Daedalian Opus (USA).gb"
set S_FILENAME="Daedalian Opus (USA).gb"
set SCRIPTNAME="daedalianopusgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
