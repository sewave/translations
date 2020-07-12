@echo off
set T_FILENAME="TR_Mystery Quest (USA).nes"
set S_FILENAME="Mystery Quest (USA).nes"
set SCRIPTNAME="mysteryquestnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
