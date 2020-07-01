@echo off
set T_FILENAME="TR_Super Golf (J).gg"
set SCRIPTNAME="supergolfgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
