@echo off
set T_FILENAME="TR_Felix the Cat (U).gb"
set SCRIPTNAME="felixthecatgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
