@echo off
set T_FILENAME="TR_Alfombra Magica, La (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="alfombramagicalanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B10:10,C810:60,B830:10,D830:10,B4D0:10,D4D0:10,
pause
