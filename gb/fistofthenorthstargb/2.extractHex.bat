@echo off
set T_FILENAME="TR_Fist of the North Star (USA).gb"
set SCRIPTNAME="fistofthenorthstargb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CE50:200,D310:10,D570:30,D390:10,D450:20,D6A0:10,D8F0:10
pause
