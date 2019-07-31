@echo off
set T_FILENAME="TR_Rad Racer 2 (U) [!].nes"
set SCRIPTNAME="radracer2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1CC10:20,110D0:20,11110:10,111D0:20,112D0:10,11320:10,11370:10,11160:10,1EF60:A0,1E410:80,1F610:80,11680:10
pause
