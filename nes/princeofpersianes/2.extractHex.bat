@echo off
set T_FILENAME="TR_Prince of Persia (U) [!].nes"
set SCRIPTNAME="princeofpersianes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
