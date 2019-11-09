@echo off
set T_FILENAME="TR_Psychosis (U).pce"
set S_FILENAME="Psychosis (U).pce"
set SCRIPTNAME="psychosispce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
