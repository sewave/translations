@echo off
set T_FILENAME="TR_Motocross Champion (Japan) [T+ENG].nes"
set SCRIPTNAME="motocrosschampionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2AF10:30,2BF10:30,2CF10:30,2DF10:30,2F1C0:180,2F8D0:20,2FD10:100,30EB0:80
pause
