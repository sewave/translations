@echo off
set T_FILENAME="TR_Ikki (Japan).nes"
set S_FILENAME="Ikki (Japan).nes"
set SCRIPTNAME="ikkines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
