@echo off
set T_FILENAME="TR_R-Type II (U).gb"
set S_FILENAME="R-Type II (U).gb"
set SCRIPTNAME="rtypeiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
