@echo off
set T_FILENAME="TR_Clue (USA).sfc"
set SCRIPTNAME="cluesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 54DF7:400
pause
