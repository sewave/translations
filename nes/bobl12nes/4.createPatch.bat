@echo off
set T_FILENAME="TR_bobl-1.2.nes"
set S_FILENAME="bobl-1.2.nes"
set SCRIPTNAME="bobl12nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
