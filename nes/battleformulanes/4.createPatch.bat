@echo off
set T_FILENAME="TR_Battle Formula (Japan).nes"
set S_FILENAME="Battle Formula (Japan).nes"
set SCRIPTNAME="battleformulanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
