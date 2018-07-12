@echo off
set T_FILENAME="TR_Commando (U) [!].nes"
set SCRIPTNAME="commandones"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2610:60
pause
