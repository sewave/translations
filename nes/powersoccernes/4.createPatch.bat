@echo off
set T_FILENAME="TR_Power Soccer (Japan).nes"
set S_FILENAME="Power Soccer (Japan).nes"
set SCRIPTNAME="powersoccernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
