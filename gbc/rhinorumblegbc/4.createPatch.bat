@echo off
set T_FILENAME="TR_Rhino Rumble (U) [C][!].gbc"
set S_FILENAME="Rhino Rumble (U) [C][!].gbc"
set SCRIPTNAME="rhinorumblegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
