@echo off
set T_FILENAME="TR_Don Doko Don (Japan).nes"
set S_FILENAME="Don Doko Don (Japan).nes"
set SCRIPTNAME="dondokodonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
