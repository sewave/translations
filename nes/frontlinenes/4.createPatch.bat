@echo off
set T_FILENAME="TR_Front Line (Japan).nes"
set S_FILENAME="Front Line (Japan).nes"
set SCRIPTNAME="frontlinenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
