@echo off
set T_FILENAME="TR_Titanic (NJ031) (Ch) [T+ENG].nes"
set SCRIPTNAME="titanicnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 49820:10,4ACA0:40,4F570:20,4CAB0:500,4E030:500
pause
