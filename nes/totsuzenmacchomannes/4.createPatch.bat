@echo off
set T_FILENAME="TR_Totsuzen! Macchoman (Japan).nes"
set S_FILENAME="Totsuzen! Macchoman (Japan).nes"
set SCRIPTNAME="totsuzenmacchomannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
