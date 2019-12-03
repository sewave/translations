@echo off
set T_FILENAME="TR_Home Alone (U) (REVA) [!].nes"
set SCRIPTNAME="homealonenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36AD0:110,2F5D0:70,2C270:A0
pause
