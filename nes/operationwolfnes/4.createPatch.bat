@echo off
set T_FILENAME="TR_Operation Wolf (U) [!].nes"
set S_FILENAME="Operation Wolf (U) [!].nes"
set SCRIPTNAME="operationwolfnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
