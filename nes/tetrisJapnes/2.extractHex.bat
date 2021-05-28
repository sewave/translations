@echo off
set T_FILENAME="TR_Tetris (Bulletproof) (Japan) (Rev B).nes"
set SCRIPTNAME="tetrisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8480:10,84E0:10,85C0:10,85E0:10,8C40:40
pause
