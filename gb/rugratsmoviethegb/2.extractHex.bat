@echo off
set T_FILENAME="TR_Rugrats Movie, The (USA) (SGB Enhanced).gb"
set SCRIPTNAME="rugratsmoviethegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6ADA0:30,6AF90:30,6B190:30,63020:140,2B7F5:C0
pause
