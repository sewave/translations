@echo off
set T_FILENAME="TR_Flight of the Intruder (USA).nes"
set S_FILENAME="Flight of the Intruder (USA).nes"
set SCRIPTNAME="flightoftheintrudernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
