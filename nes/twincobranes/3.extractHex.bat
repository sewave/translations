@echo off
set T_FILENAME="TR_Twin Cobra (U) [!].nes"
set SCRIPTNAME="twincobranes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
