@echo off
set T_FILENAME="TR_Duck Maze (Australia) (Unl).nes"
set SCRIPTNAME="duckmazenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8210:10,9CE0:90,9E30:40
pause
