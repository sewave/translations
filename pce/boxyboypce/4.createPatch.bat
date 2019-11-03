@echo off
set T_FILENAME="TR_Boxy Boy (U).pce"
set S_FILENAME="Boxy Boy (U).pce"
set SCRIPTNAME="boxyboypce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
