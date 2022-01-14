@echo off
set T_FILENAME="TR_Super Volleyball (USA).pce"
set S_FILENAME="Super Volleyball (USA).pce"
set SCRIPTNAME="supervolleyballpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
