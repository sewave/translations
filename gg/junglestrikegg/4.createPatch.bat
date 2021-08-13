@echo off
set T_FILENAME="TR_Jungle Strike (USA).gg"
set S_FILENAME="Jungle Strike (USA).gg"
set SCRIPTNAME="junglestrikegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
