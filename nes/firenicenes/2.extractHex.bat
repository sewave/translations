@echo off
set T_FILENAME="TR_Fire 'n Ice (USA).nes"
set SCRIPTNAME="firenicenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 201E0:60,202B0:20,203E0:30,207D0:20,20850:580
pause
