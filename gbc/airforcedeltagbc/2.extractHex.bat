@echo off
set T_FILENAME="TR_AirForce Delta (USA).gbc"
set SCRIPTNAME="airforcedeltagbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 740A0:60,741C0:40,747B0:50,74230:10
pause
