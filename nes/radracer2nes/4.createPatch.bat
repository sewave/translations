@echo off
set T_FILENAME="TR_Rad Racer 2 (U) [!].nes"
set S_FILENAME="Rad Racer 2 (U) [!].nes"
set SCRIPTNAME="radracer2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
