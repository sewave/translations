@echo off
set T_FILENAME="TR_Wonder Momo (Japan) [T+ENG].pce"
set SCRIPTNAME="wondermomopce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20600:120,20800:380,D400:80,D740:C0
pause
