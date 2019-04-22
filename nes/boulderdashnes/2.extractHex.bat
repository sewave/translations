@echo off
set T_FILENAME="TR_Boulder Dash (U) [!].nes"
set SCRIPTNAME="boulderdashnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C530:20,C570:40
pause
