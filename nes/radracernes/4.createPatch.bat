@echo off
set T_FILENAME="TR_Rad Racer (U) [!].nes"
set S_FILENAME="Rad Racer (U) [!].nes"
set SCRIPTNAME="radracernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
