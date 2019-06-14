@echo off
set T_FILENAME="TR_Super Tetris (Korea) (Pirate).sms"
set S_FILENAME="Super Tetris (Korea) (Pirate).sms"
set SCRIPTNAME="supertetrissms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
