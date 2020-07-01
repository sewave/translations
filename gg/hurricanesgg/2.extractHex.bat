@echo off
set T_FILENAME="TR_Hurricanes (Europe).gg"
set SCRIPTNAME="hurricanesgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
