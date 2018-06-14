@echo off
set T_FILENAME="TR_Knuckles' Chaotix (JU) (32X) [!].32x"
set SCRIPTNAME="knuckleschaotix32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
