@echo off
set T_FILENAME="TR_Othello (USA).nes"
set SCRIPTNAME="othellousanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FD0:20,91D0:40,9300:10,9600:10,9B80:70,9CC0:20,9D20:10,9DD0:10,9ED0:10,9FC0:20
pause
