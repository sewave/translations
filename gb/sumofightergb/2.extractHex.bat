@echo off
set T_FILENAME="TR_Sumo Fighter (USA).gb"
set SCRIPTNAME="sumofightergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16310:10,163D0:30,160E0:80,16200:10,16260:20,160D0:10,BF00:40,16240:10,16280:10
pause
