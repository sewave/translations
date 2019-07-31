@echo off
set T_FILENAME="TR_Chessmaster, The (U) [!].gg"
set SCRIPTNAME="chessmasterthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C200:200
pause
