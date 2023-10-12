@echo off
set T_FILENAME="TR_Ms. Pac-Man (USA) (Unl).nes"
set SCRIPTNAME="mspacmantengennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9A80:20,9D90:40,8C10:60,93C0:50,9550:20,9770:20,9B40:30,9E40:10,9BB0:60,9D00:10,9E00:10,9FF0:20
pause
