@echo off
set T_FILENAME="TR_Pac-Land (U).pce"
set S_FILENAME="Pac-Land (U).pce"
set SCRIPTNAME="paclandpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
