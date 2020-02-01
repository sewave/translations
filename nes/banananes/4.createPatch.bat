@echo off
set T_FILENAME="TR_Banana (Japan).nes"
set S_FILENAME="Banana (Japan).nes"
set SCRIPTNAME="banananes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
