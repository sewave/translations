@echo off
set T_FILENAME="TR_Super Tetris (Korea) (Pirate).sms"
set SCRIPTNAME="supertetrissms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
