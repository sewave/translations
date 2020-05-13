@echo off
set T_FILENAME="TR_Mechanized Attack (U) [!].nes"
set S_FILENAME="Mechanized Attack (U) [!].nes"
set SCRIPTNAME="mechanizedattacknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
