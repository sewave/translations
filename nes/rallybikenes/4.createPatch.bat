@echo off
set T_FILENAME="TR_Rally Bike (U) [!].nes"
set S_FILENAME="Rally Bike (U) [!].nes"
set SCRIPTNAME="rallybikenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
