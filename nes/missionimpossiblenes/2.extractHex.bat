@echo off
set T_FILENAME="TR_Mission - Impossible (USA).nes"
set SCRIPTNAME="missionimpossiblenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22390:30,24030:20,2CBA0:10,27CD0:40,27EF0:60
pause
