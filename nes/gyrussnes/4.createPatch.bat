@echo off
set T_FILENAME="TR_Gyruss (USA).nes"
set S_FILENAME="Gyruss (USA).nes"
set SCRIPTNAME="gyrussnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
