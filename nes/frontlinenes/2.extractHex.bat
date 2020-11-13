@echo off
set T_FILENAME="TR_Front Line (Japan).nes"
set SCRIPTNAME="frontlinenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E70:100,4920:100
pause
