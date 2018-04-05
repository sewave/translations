@echo off
set T_FILENAME="TR_Megaman (U) [!].nes"
set SCRIPTNAME="megaman"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3670:50,39F0:10
pause
