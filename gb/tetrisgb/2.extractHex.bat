@echo off
set T_FILENAME="TR_Tetris (W) (V1.1) [!].gb"
set SCRIPTNAME="tetrisgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41FF:8
pause
