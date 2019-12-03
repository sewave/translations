@echo off
set T_FILENAME="TR_Destination Earthstar (U) [!].nes"
set SCRIPTNAME="destinationearthstarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9FB0:50
pause
