@echo off
set T_FILENAME="TR_Gauntlet (USA).nes"
set SCRIPTNAME="gauntletnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2FFD0:20,2FBB0:50,294B0:10,2AE10:30,2AE80:30,241C0:20,245C0:20,249C0:20,24DC0:20,251C0:20,255C0:20,259C0:20,25DC0:20,261C0:20,265C0:20
pause
