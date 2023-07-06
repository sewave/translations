@echo off
set T_FILENAME="TR_Bubble Bobble (USA, Europe).gb"
set SCRIPTNAME="bubblebobblegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
