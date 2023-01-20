@echo off
set T_FILENAME="TR_Pinochio 32X Working.32x"
set SCRIPTNAME="pinochio32xworking32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
