@echo off
set T_FILENAME="TR_Night Creatures (USA).pce"
set S_FILENAME="Night Creatures (USA).pce"
set SCRIPTNAME="nightcreaturespce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
