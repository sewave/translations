@echo off
set T_FILENAME="TR_Skate Boy (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="skateboynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8210:50,8D30:50
pause
