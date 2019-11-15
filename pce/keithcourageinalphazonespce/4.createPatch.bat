@echo off
set T_FILENAME="TR_Keith Courage in Alpha Zones (U).pce"
set S_FILENAME="Keith Courage in Alpha Zones (U).pce"
set SCRIPTNAME="keithcourageinalphazonespce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
