@echo off
set T_FILENAME="TR_Kung Fu (U) [!].nes"
set SCRIPTNAME="kungfunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
