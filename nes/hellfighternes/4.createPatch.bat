@echo off
set T_FILENAME="TR_Hell Fighter (Asia) (PAL) (Unl).nes"
set S_FILENAME="Hell Fighter (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="hellfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
