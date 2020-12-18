@echo off
set T_FILENAME="TR_Isolated Warrior (USA).nes"
set SCRIPTNAME="isolatedwarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 203A0:20,20420:100,20620:80,20720:80,20F10:40,2D8B0:80,2D9B0:80,2DAB0:80,39020:100,3C530:10
pause
