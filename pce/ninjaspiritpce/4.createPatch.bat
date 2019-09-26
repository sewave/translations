@echo off
set T_FILENAME="TR_Ninja Spirit (U).pce"
set S_FILENAME="Ninja Spirit (U).pce"
set SCRIPTNAME="ninjaspiritpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
