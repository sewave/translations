@echo off
set T_FILENAME="TR_Junction (U).gg"
set S_FILENAME="Junction (U).gg"
set SCRIPTNAME="junctiongg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
