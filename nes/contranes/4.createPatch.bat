@echo off
set T_FILENAME="TR_Contra (U) [!].nes"
set S_FILENAME="Contra (U) [!].nes"
set SCRIPTNAME="contranes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
