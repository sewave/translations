@echo off
set T_FILENAME="TR_Tetris (USA) (Unl).nes"
set SCRIPTNAME="tetristengennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AFD0:40,86E0:180,8920:40,8D10:200,8E00:210,B6E0:180,BFF0:20
pause
