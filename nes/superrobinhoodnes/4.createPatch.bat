@echo off
set T_FILENAME="TR_Super_Robin_Hood.nes"
set S_FILENAME="Super_Robin_Hood.nes"
set SCRIPTNAME="superrobinhoodnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
