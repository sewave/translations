@echo off
set T_FILENAME="TR_Pac-Land (Japan).nes"
set S_FILENAME="Pac-Land (Japan).nes"
set SCRIPTNAME="paclandnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
