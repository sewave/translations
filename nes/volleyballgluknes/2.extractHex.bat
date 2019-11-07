@echo off
set T_FILENAME="TR_Volley Ball (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="volleyballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9E40:10,B330:60,A610:20,B610:20,B390:40,F810:30
pause
