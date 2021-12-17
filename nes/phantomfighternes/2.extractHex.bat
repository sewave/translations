@echo off
set T_FILENAME="TR_Phantom Fighter (USA).nes"
set SCRIPTNAME="phantomfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 364BD:10,105E0:30,100B0:10,103E0:20,107C0:50,3913:400,2EC40:10,12FDD:30,131BD:50
pause
