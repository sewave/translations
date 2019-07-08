@echo off
set T_FILENAME="TR_Fester's Quest (U) [!].nes"
set S_FILENAME="Fester's Quest (U) [!].nes"
set SCRIPTNAME="festersquestnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
