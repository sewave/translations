@echo off
set T_FILENAME="TR_Tricky Kick (U).pce"
set S_FILENAME="Tricky Kick (U).pce"
set SCRIPTNAME="trickykickpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
