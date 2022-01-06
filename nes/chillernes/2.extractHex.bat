@echo off
set T_FILENAME="TR_Chiller (USA) (Unl).nes"
set SCRIPTNAME="chillernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8210:100,8FC0:20,9260:100,B260:100,D260:100,F260:100
pause
