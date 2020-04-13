@echo off
set T_FILENAME="TR_Kirby's Dream Land (UE) [!].gb"
set SCRIPTNAME="kirbysdreamlandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
