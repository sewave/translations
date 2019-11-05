@echo off
set T_FILENAME="TR_Booky Man (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="bookymannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4140:10,4200:10,4E60:10
pause
