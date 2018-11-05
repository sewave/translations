@echo off
set T_FILENAME="TR_Life Force (U) [!].nes"
set SCRIPTNAME="lifeforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
