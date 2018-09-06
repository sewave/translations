@echo off
set T_FILENAME="TR_Son Son (J) [!].nes"
set SCRIPTNAME="sonsonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
