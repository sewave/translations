@echo off
set T_FILENAME="TR_Prince of Persia (E).bin"
set SCRIPTNAME="ppersiaesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
