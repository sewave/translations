@echo off
set T_FILENAME="TR_Palamedes (U) [!].nes"
set S_FILENAME="Palamedes (U) [!].nes"
set SCRIPTNAME="palamedesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
