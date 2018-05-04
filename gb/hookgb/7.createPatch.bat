@echo off
set T_FILENAME="TR_Hook (U).gb"
set S_FILENAME="Hook (U).gb"
set SCRIPTNAME="hookgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
