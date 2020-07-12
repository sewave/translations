@echo off
set T_FILENAME="TR_Crazy Climber (Japan).nes"
set SCRIPTNAME="crazyclimbernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F5C0:40
pause
