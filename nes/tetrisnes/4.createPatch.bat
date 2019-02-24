@echo off
set T_FILENAME="TR_Tetris (U) [!].nes"
set S_FILENAME="Tetris (U) [!].nes"
set SCRIPTNAME="tetrisnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
