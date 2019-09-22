@echo off
set T_FILENAME="TR_Ballistix (U).pce"
set S_FILENAME="Ballistix (U).pce"
set SCRIPTNAME="ballistixpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
