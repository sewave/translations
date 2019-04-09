@echo off
set T_FILENAME="TR_Tetris (J) [!].bin"
set SCRIPTNAME="tetrissmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
