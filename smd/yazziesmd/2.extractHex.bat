@echo off
set T_FILENAME="TR_yazzie.bin"
set SCRIPTNAME="yazziesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
