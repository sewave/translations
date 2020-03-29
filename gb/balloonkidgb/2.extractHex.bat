@echo off
set T_FILENAME="TR_Balloon Kid (W) [!].gb"
set SCRIPTNAME="balloonkidgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
