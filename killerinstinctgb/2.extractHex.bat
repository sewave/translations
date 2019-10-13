@echo off
set T_FILENAME="TR_Killer Instinct (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="killerinstinctgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 
pause
