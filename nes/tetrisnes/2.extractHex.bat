@echo off
set T_FILENAME="TR_Tetris (U) [!].nes"
set SCRIPTNAME="tetrisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B510:10,B6A0:70,B2B0:40
pause
