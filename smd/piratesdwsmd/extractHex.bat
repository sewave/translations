@echo off 
set T_FILENAME="TR_Pirates of Dark Water, The (UE).bin"
set SCRIPTNAME="piratesdwsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E27B4-E28D3
pause 
