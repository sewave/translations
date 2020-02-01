@echo off
set T_FILENAME="TR_Challenger (Japan).nes"
set S_FILENAME="Challenger (Japan).nes"
set SCRIPTNAME="challengernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
