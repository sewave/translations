@echo off
set T_FILENAME="TR_Metal Gear (USA).nes"
set S_FILENAME="Metal Gear (USA).nes"
set SCRIPTNAME="metalgearnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
