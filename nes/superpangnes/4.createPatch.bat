@echo off
set T_FILENAME="TR_Super Pang (Asia) (Ja) (PAL) (Unl).nes"
set S_FILENAME="Super Pang (Asia) (Ja) (PAL) (Unl).nes"
set SCRIPTNAME="superpangnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
