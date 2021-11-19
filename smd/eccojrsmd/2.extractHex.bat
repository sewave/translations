@echo off
set T_FILENAME="TR_Ecco Jr. (USA, Australia).md"
set SCRIPTNAME="eccojrsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
