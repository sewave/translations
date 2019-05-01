@echo off
set T_FILENAME="TR_R-Type (U).pce"
set S_FILENAME="R-Type (U).pce"
set SCRIPTNAME="rtypepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
