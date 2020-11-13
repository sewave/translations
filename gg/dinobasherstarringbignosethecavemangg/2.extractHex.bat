@echo off
set T_FILENAME="TR_Dinobasher - Starring Bignose the Caveman [Proto].gg"
set SCRIPTNAME="dinobasherstarringbignosethecavemangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
