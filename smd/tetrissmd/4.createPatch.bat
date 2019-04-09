@echo off
set T_FILENAME="TR_Tetris (J) [!].bin"
set S_FILENAME="Tetris (J) [!].bin"
set SCRIPTNAME="tetrissmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
