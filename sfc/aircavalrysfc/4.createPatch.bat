@echo off
set T_FILENAME="TR_Air Cavalry (USA).sfc"
set S_FILENAME="Air Cavalry (USA).sfc"
set SCRIPTNAME="aircavalrysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
