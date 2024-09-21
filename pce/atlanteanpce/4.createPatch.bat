@echo off
set T_FILENAME="TR_Atlantean.pce"
set S_FILENAME="Atlantean.pce"
set SCRIPTNAME="atlanteanpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
