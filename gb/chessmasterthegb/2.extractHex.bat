@echo off
set T_FILENAME="TR_Chessmaster, The (UE) (V1.1) [!].gb"
set SCRIPTNAME="chessmasterthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6A80:C0
pause
