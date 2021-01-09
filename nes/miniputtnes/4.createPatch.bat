@echo off
set T_FILENAME="TR_Mini-Putt (Japan).nes"
set S_FILENAME="Mini-Putt (Japan).nes"
set SCRIPTNAME="miniputtnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
