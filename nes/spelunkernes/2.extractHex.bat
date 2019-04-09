@echo off
set T_FILENAME="TR_Spelunker (U) [!].nes"
set SCRIPTNAME="spelunkernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FF0:20,8510:40,9510:40
pause
