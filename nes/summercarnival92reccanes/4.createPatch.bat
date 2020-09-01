@echo off
set T_FILENAME="TR_Summer Carnival '92 - Recca (Japan).nes"
set S_FILENAME="Summer Carnival '92 - Recca (Japan).nes"
set SCRIPTNAME="summercarnival92reccanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
