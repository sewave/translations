@echo off
set T_FILENAME="TR_Rygar (USA) (Rev A).nes"
set SCRIPTNAME="rygarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7020:10,7050:10,7300:10,7400:10,75D0:40,7690:100,7810:80,7C90:1B0,7FF0:20,8190:100
pause
